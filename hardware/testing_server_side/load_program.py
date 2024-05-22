import serial

data = [ # assuming all are 6 digits
    "139956",
    "654321",
    "123456",
]

with serial.Serial('/dev/ttyUSB1', 115200, timeout=10) as ser:
    checksum = 0
    for item in data:
        to_send = item[:2], item[2:4], item[4:]
        for number in to_send:
            checksum += int(number)  # doesn't matter if we do mod every time or just in the end
                                # so not doing it here
            ser.write(int(number).to_bytes(1, 'big')) # big or little doesn't matter - one byte 
            print("byte sent was:", hex(int(number)), "= 0b"+bin(int(number))[2:].zfill(8))
            print("checksum was:", hex(checksum), "= 0b"+bin(checksum)[2:].zfill(8))
            # input6()
            
    # send done command using MSB of 8, bc that bit is never used for data.
    ser.write((1 << 7).to_bytes(1, 'big')) # big or little doesn't matter - one byte ;
    # input()
    
    print(f"checksum should be: {hex(checksum % (1 << 8 ))}")
    
    dat = ser.read(1)
    print(dat, hex(int.from_bytes(dat, 'big'))) # byte order doesn't matter - one byte
    