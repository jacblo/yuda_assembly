import load_program
import time

def callback(ser):
    a = time.time()
    try:
        while True:
            if ser.in_waiting:
                dat = ser.read(1)
                print("received:", dat, hex(int.from_bytes(dat, 'big')), str(int.from_bytes(dat, 'big')).zfill(2),
                            f'"{chr(int.from_bytes(dat, "big")+28)}"' if int.from_bytes(dat, "big")+28<128 else "", sep="\t") # byte order doesn't matter - one byte
                if dat == b'\x81':
                    to_send = input("give input please: ")
                    for char in to_send.encode("ascii"):
                        byte_to_send = char-28 # remove first values (not printable anyway) to reduce to 0-99 range
                        ser.write(byte_to_send.to_bytes(1,'big'))
                    ser.write(b'\0')
                
                if dat == b'\xff':
                    elapsed = time.time() - a
                    print(f"Program finished and took {elapsed:.5f} seconds to run.")
                    break
    except KeyboardInterrupt:
        print("stopping and closing...")


# receive and reprint
data = [
    "010105",
    "260300",
    "010105",
    # "260200",
    "260200",
    "100100",
    "000000"
]

if __name__ == "__main__":
    load_program.send_program(data, callback)