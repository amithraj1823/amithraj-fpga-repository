# Amithraj-fpga-repository

Procedure to view the results:
Procedure 1: When you are using from the device
1. Navigate to the folder where your project contains.
2. Open the terminal.
3. Ensure the correct directory is added.
4. make clean-To clear previously generated files.
5. make build-To generate files required to flash on fpga.
6. lsusb-To ensure the board is connected
7. sudo make flash-To flash the generated files onto the kit.
8. sudo apt install picocom-To use the terminal to view UART.
9. sudo make terminal-To view the terminal.
10. ctrl+a, ctrl+x- To exit from the terminal.

Procedure 2:Cloning any github repository
1. open terminal and type cd
2. git clone "paste github repository link here without double quotes".
3. Rest is same from point 3 referring to procedure 1.
