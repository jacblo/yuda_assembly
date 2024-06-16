import serial

# fibonacci
data = [ # assuming all are 6 digits
    "010100",
    "010201",
    "040209", # last two digits here are index into fibo
    "052202",
    "070201",
    "030102",
    "170101",
    "050201",
    "030122",
    "240300",
    "000000",
]

# long loop
data = [
    "100300",
    "499999",
    "000012",
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

with serial.Serial('/dev/ttyUSB1', 2_000_000, timeout=5) as ser:
    checksum = 0
    for item in data:
        to_send = item[:2], item[2:4], item[4:]
        for number in to_send:
            checksum += int(number)  # doesn't matter if we do mod every time or just in the end
                                # so not doing it here
            ser.write(int(number).to_bytes(1, 'big')) # big or little doesn't matter - one byte 
            # print("byte sent was:", hex(int(number)), "= 0b"+bin(int(number))[2:].zfill(8))
            # print("checksum was:", hex(checksum), "= 0b"+bin(checksum)[2:].zfill(8))
            # input()
            
    # send done command using MSB of 8, bc that bit is never used for data.
    ser.write((0xfe).to_bytes(1, 'big')) # big or little doesn't matter - one byte
    # input()
    
    print(f"sent. checksum should be: {hex(checksum % (1 << 8 ))}")
    
    dat = ser.read(1)
    print("received checksum:", dat, hex(int.from_bytes(dat, 'big'))) # byte order doesn't matter - one byte
    if checksum % (1 << 8 ) == int.from_bytes(dat, 'big'): # byte order doesn't matter - one byte
        print("Checksum matches")
    else:
        print("Checsum failed to match!!")