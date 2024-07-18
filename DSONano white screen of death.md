## Problem

DSONano v2 with DFU loader v3.26 does not work with the firmware used by
the other v2 models. The drivers for the LCD display changed so flashing
the "normal" thirdparty firmware causes an all white screen to persist
on the screen. In some cases it flickers as well.

## Sollution

1.  use the patched firmware provided
    [here](http://www.seeedstudio.com/forum/viewtopic.php?f=22&t=4823&sid=3e537c759d444eb3ae50c74adf5fc1eb&start=40)
    and mirrored
    [here](Media:BenF_P2-3.64APP_3.53LIB_LCD_patched_v2.hex)

### flashing

1.  plug the dsonano in via usb
2.  press the down arrow and power on the device
3.  mount the block device (/dev/sdX, no number)
4.  copy the .hex file to the mount point
5.  wait for it to dissappear
6.  unmount the mount point
7.  mount the new block device
8.  check to see that the extension on the file now reads .RDY (limited
    file name length truncates the rest of the name sometimes)
9.  powercycle to check if it worked
10. repeat until it works
