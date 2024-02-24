string = "Tube: IN-12. Board Rev: A. Backlight: 1. ETC: 1. Pushbutton: 1. Menu LEDs: 1. Manufacture Date: 10/11/2023\n"

clear();

Protocol.Mode.text = "I2C"; // make sure SPI tab is selected
Protocol.I2C.Mode.value = 1;                       //Set the I2C Protocol tool into Master Mode
Protocol.I2C.SCL.value = 1;                        //Set the SCL pin to be DIO 0
Protocol.I2C.SDA.value = 0;                        //Set the SDA pin to be DIO 1
Protocol.I2C.SCL.Frequency.value = 100000;         //Set the SCL clock frequency to 100 kHz
Protocol.config()

print(string);

print(string.length);

for (c = 0; c < string.length; c++) {

    Protocol.I2C.Write(0x50, [c, string.charCodeAt(c)]);
    print(string[c]);
    wait(0.1)

}

//for (c = 0; c < 256; c++) {
//
//    Protocol.I2C.Write(0x50, [c, 0xFF]);
//    wait(0.1)
//
//}