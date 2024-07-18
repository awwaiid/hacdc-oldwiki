2018.01.25

Hack-a-day offered a project
\[<https://hackaday.com/2017/12/26/fast-3d-printing-with-raspberry-pi-but-not-how-you-think/>,
Fast 3D Printing with Raspberry Pi — But Not How You Think\]. However,
it describes how to do stuff via OctoPi (child of OctoPrint), which we
don't want to use. This led to the question ["Any way to divorce Klipper
from Octo\*?"](https://github.com/KevinOConnor/klipper/issues/138) and
also ["Klipper as
daemon"](https://www.freelists.org/post/klipper/Klipper-as-daemon,1)

## [Installation](https://github.com/KevinOConnor/klipper/blob/master/docs/Installation.md)

Most of our machines use the [Atmega
AVR](https://en.wikipedia.org/wiki/Atmel_AVR)
[2560](http://www.microchip.com/wwwproducts/en/atmega2560) Rambo board.
But we'll start with the Aden rebuild which uses the [Atmega
AVR](https://en.wikipedia.org/wiki/Atmel_AVR)
[644p](http://www.microchip.com/wwwproducts/en/atmega644p). Both are 16
MHz. So, select the proper microprocessor and speed in the
**menuconfig** step below.

`   $ make menuconfig`\
`   $ make`\
`     Build Kconfig config file`\
`     Creating symbolic link out/board`\
`     Compiling out/src/sched.o`\
`     Compiling out/src/command.o`\
`     Compiling out/src/basecmd.o`\
`     Compiling out/src/debugcmds.o`\
`     Compiling out/src/gpiocmds.o`\
`     Compiling out/src/stepper.o`\
`     Compiling out/src/endstop.o`\
`     Compiling out/src/adccmds.o`\
`     Compiling out/src/spicmds.o`\
`     Compiling out/src/pwmcmds.o`\
`     Compiling out/src/avr/main.o`\
`     Compiling out/src/avr/timer.o`\
`     Compiling out/src/avr/gpio.o`\
`     Compiling out/src/avr/watchdog.o`\
`     Compiling out/src/avr/serial.o`\
`     Building out/compile_time_request.o`\
`   Version: v0.5.0-108-g1b3ef8a-20180125_195156-hostname`\
`     Linking out/klipper.elf`\
`     Creating hex file out/klipper.elf.hex`

It has been suggested that socat may help debug stuff...

`   $ sudo apt install socat`
