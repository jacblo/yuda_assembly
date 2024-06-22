import cli.protocol as protocol
import socket
import threading

def main():
    client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        client_socket.connect(('localhost', 8800))
    except ConnectionRefusedError:
        client_socket.connect((input("what ip is the server on: "), 8800))

    aes_key = protocol.client_side_handshake(client_socket)
    
    # Send and receive messages, act as thin client.
    try:
        while True:
            server_command = protocol.get_encrypted_message(client_socket, aes_key)
            match server_command:
                case b"input":
                    prompt = protocol.get_encrypted_message(client_socket, aes_key)
                    message = input(prompt.decode('utf-8')).encode()
                    protocol.send_encrypted_message(client_socket, aes_key, message)

                case b"print":
                    to_print = protocol.get_encrypted_message(client_socket, aes_key)
                    print(to_print.decode("utf-8"), end="")
                
                case b"file-picker":
                    prompt = protocol.get_encrypted_message(client_socket, aes_key)
                    while True:
                        file_path = input(prompt.decode('utf-8')).encode() #!TODO: Autocomplete file paths
                        try:
                            with open(file_path, "r") as f:
                                to_send = f.read()
                                break
                        except FileNotFoundError:
                            print("File not found. try again")
                    
                    protocol.send_encrypted_message(client_socket, aes_key, to_send.encode('utf-8'))
                
                case b"stop":
                    print("Exited.")
                    break
                
    except KeyboardInterrupt:
        protocol.send_encrypted_message(client_socket, aes_key, b"exit") # in case waiting for input
        print("Stopped.")

if __name__ == "__main__":
    main()
