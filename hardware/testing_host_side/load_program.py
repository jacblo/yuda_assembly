import serial
import time
import glob

def send_program(data, after_run_callback, clear_received = True):
    # find the port
    ports = glob.glob('/dev/ttyUSB[0-9]*')
    if len(ports) == 1:
        port = ports[0]
    else:
        print("available ports are: \n","\n".join(f"{i+1}: port" for i, port in enumerate(ports)))
        port = ports[int(input("select one of them (by number before it in list): "))] # error if illegal input, that's good.
    
    # connect and send
    with serial.Serial(port, 2_000_000, timeout=5) as ser:
        ser.write(b"\xff") # send 0xff first
        
        checksum = 0
        for item in data:
            to_send = item[:2], item[2:4], item[4:]
            for number in to_send:
                checksum += int(number)  # doesn't matter if we do mod every time or just in the end
                                    # so not doing it here
                ser.write(int(number).to_bytes(1, 'big')) # big or little doesn't matter - one byte 
                # print("byte sent was:", hex(int(number)), "= 0b"+bin(int(number))[2:].zfill(8))
                # print("checksum was:", hex(checksum), "= 0b"+bin(checksum)[2:].zfill(8))
                
        if (clear_received):
            ser.reset_input_buffer()
        # send done command using MSB of 8, bc that bit is never used for data.
        ser.write(b'\xfe')
        
        print(f"sent. checksum should be: {hex(checksum % (1 << 8 ))}")
        
        dat = ser.read(1)
        print("received checksum:", dat, hex(int.from_bytes(dat, 'big'))) # byte order doesn't matter - one byte
        if checksum % (1 << 8 ) == int.from_bytes(dat, 'big'): # byte order doesn't matter - one byte
            print("Checksum matches")
        else:
            print("Checsum failed to match!!")
        
        after_run_callback(ser)



# fibonacci
# index: number (of fibonacci)
# 1: 1, 2: 1, 3: 2, 4: 3, 5: 5, 6: 8, 7: 13, 8: 21, 9: 34, 10: 55, 11: 89, 12: 144, 13: 233, 14: 377, 15: 610, 16: 987, 17: 1597, 18: 2584,
# 19: 4181, 20: 6765, 21: 10946, 22: 17711, 23: 28657, 24: 46368, 25: 75025, 26: 121393, 27: 196418, 28: 317811, 29: 514229, 30: 832040
data = [ # assuming all are 6 digits
    "010100",
    "010201",
    "042430", # fibo index
    "052502",
    "070201",
    "030124",
    "170101",
    "052401",
    "030125",
    "240300",
    "010125",
    "260400",
    "260400",
    "030125",
    "000000",
    "010199",
]

# long loop
data = [
    "100300",
    "499999",
    "000012", # 12 loops is one second (almost exactly) at 12Mhz, so we get speedup factor with other clock speeds
    "030101",
    "030202",
    "170101",
    "240500",
    "030101",
    "170201",
    "240500",
    "010102",
    "000000",
]

# # skip a few lines
# data = [
#     "010102", # mov AX, 2
#     "100300", # jmp 3
#     "010106", # mov AX, 6
#     "000000"
# ]

# # no 00s
# data = [
#     "010102", # mov AX, 2
# ]

# # send specific word
# data = [
#     "010104", # mov AX, NUM_PTR
#     "260600", # syscall
#     "260600", # syscall
#     "000000", # ret
#     "123456", # the number
#     "011235", # (fibonacci lol)
#     "000000"
# ]

if __name__ == "__main__":
    def callback(ser):
        a = time.time() # to measure how long it takes to run

        try:
            while True:
                if ser.in_waiting:
                    dat = ser.read(1)
                    print("received:", dat, hex(int.from_bytes(dat, 'big')), str(int.from_bytes(dat, 'big')).zfill(2), sep="\t") # byte order doesn't matter - one byte
                    if dat == b'\xff':
                        elapsed = time.time() - a
                        print(f"Program finished and took {elapsed:.5f} seconds to run.")
                        break
        except KeyboardInterrupt:
            print("stopping and closing...")
            
    send_program(data, callback)