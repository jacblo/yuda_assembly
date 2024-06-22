from Crypto.Cipher import AES, PKCS1_OAEP
from Crypto.PublicKey import RSA
from Crypto.Random import get_random_bytes
from Crypto.Util.Padding import pad, unpad
import socket

#               socket communication
def recvall(sock: socket.socket, length):
    out = b""
    while len(out) < length:
        out += sock.recv(length - len(out))
    return out

def send_message(sock: socket.socket, message: bytes):
    length = len(message)
    length_bytes = length.to_bytes(4, 'big') # allows any length up to 2^32 = 4,294,967,296 = 4GiB
    sock.sendall(length_bytes + message)

def get_message(sock: socket.socket) -> bytes:
    length_bytes = recvall(sock, 4)
    length = int.from_bytes(length_bytes, 'big')
    return recvall(sock, length)

# This is based on StackOverflow https://stackoverflow.com/a/62277798/14103406
def is_socket_closed(sock: socket.socket) -> bool:
    try:
        # this will try to read bytes without blocking and also without removing them from buffer (peek only)
        data = sock.recv(16, socket.MSG_DONTWAIT | socket.MSG_PEEK)
        if len(data) == 0:
            return True
    except BlockingIOError:
        return False  # socket is open and reading from it would block
    except ConnectionResetError:
        return True  # socket was closed for some other reason
    return False


#                   Encryption
# Server side
def generate_rsa_key_pair():
    return RSA.generate(2048)

def decrypt_aes_key(encrypted_aes_key, private_key):
    cipher_rsa = PKCS1_OAEP.new(private_key)
    return cipher_rsa.decrypt(encrypted_aes_key)

def server_side_handshake(client_socket: socket.socket):
    # Generate RSA key pair
    rsa_key = generate_rsa_key_pair()

    # Send public key to client
    send_message(client_socket, rsa_key.publickey().export_key())

    # Receive AES key encrypted with RSA
    encrypted_aes_key = get_message(client_socket)

    # Decrypt AES key using RSA private key
    aes_key = decrypt_aes_key(encrypted_aes_key, rsa_key)
    
    return aes_key


# Client side
def generate_aes_key():
    return get_random_bytes(24)

def encrypt_aes_key(aes_key, public_key):
    cipher_rsa = PKCS1_OAEP.new(public_key)
    return cipher_rsa.encrypt(aes_key)

def client_side_handshake(client_socket: socket.socket):
    # Receive public key from server
    public_key = RSA.import_key(get_message(client_socket))

    # Generate AES key
    aes_key = generate_aes_key()

    # Encrypt AES key using RSA public key
    encrypted_aes_key = encrypt_aes_key(aes_key, public_key)

    # Send encrypted AES key to server
    send_message(client_socket, encrypted_aes_key)
    
    return aes_key


# Both
def aes_decrypt(ciphertext: bytes, key: bytes, iv: bytes):
    cipher_aes = AES.new(key, AES.MODE_CBC, iv)
    return unpad(cipher_aes.decrypt(ciphertext), AES.block_size)

def aes_encrypt(message: bytes, key: bytes, iv: bytes):
    cipher_aes = AES.new(key, AES.MODE_CBC, iv)
    return cipher_aes.encrypt(pad(message, AES.block_size))

def send_encrypted_message(sock: socket.socket, aes_key: bytes, message: bytes):
    iv = get_random_bytes(AES.block_size)
    ciphertext = iv + aes_encrypt(message, aes_key, iv)
    send_message(sock, ciphertext)

def get_encrypted_message(sock: socket.socket, aes_key: bytes) -> bytes:
    ciphertext = get_message(sock)
    iv = ciphertext[:AES.block_size]
    message = aes_decrypt(ciphertext[AES.block_size:], aes_key, iv)
    return message