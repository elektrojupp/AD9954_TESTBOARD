# AD9954_TESTBOARD
Testboard for AD9954 controlled by a STM32L4. Available interfaces: SWD, CAN, USB and GUI

# Hardware
Hardware folder contains PCB in as Kicad project.
All used components in own libary, so it should be possible to open without problems.

# Software
Software folder contains a STM32CubeIDE project. 
For compilation it might be necessary to have the STM32L4 support package installed.
All interfaces are accessible via software:
AD9954 can run in single tone mode,
USB runs as loopserver, CAN interface initiates (no further testing).
GUI menue structure is a bit blown up but flexible. 
STM32L4 runs FREERTOS RTO. Every Interface has its own task. 
Communication over queues and semaphores, between different tasks,
so its possible to implement communication over USB/CAN to AD9954.
When a button is pressed during RESET, a snake game appears. 
Speacial feature of the snake game is to store the highscore in flash (simple eeprom emulation).


# Frontview PCB 
More Pictures in Picture folder
![IMG_E0632](https://user-images.githubusercontent.com/90460424/133238298-ffd87957-b86c-4213-8524-14c25d2db068.JPG)
