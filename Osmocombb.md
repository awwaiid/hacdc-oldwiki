# WIP

notes on using osmocombb to abuse feature phones. this is a work in
progress. the above section label will be removed once complete.

## Prereqs

-   [OsmocomBB software](Osmocombb_build)
-   [TTL adapter](http://bb.osmocom.org/trac/wiki/Hardware/SerialCable)
-   [Supported phone](http://bb.osmocom.org/trac/wiki/Hardware/Phones)

## Order

-   get clean firmware image
-   load osmocombb firmware (see
    [this](http://bb.osmocom.org/trac/wiki/flashing_new#actualinstallation))
-   do evil things

## Get Clean Firmware Image

-   start loader in ram (for c140 or c139)

` $ osmocon -p /dev/ttyUSB0 -m c140xor target/firmware/board/compal_e86/loader.compalram.bin`

-   in a new window dump the firmware

` $ osmoload memdump 0x000000 0x7fffff stock_flash.bin`

-   go get a cup of caffiene

## Load OsmocomBB

-   for reference: <http://bb.osmocom.org/trac/wiki/flashing_new>

1.  run the following in a terminal (it should not return):

` $ $REPO/src/host/osmocon/osmocon -p /dev/ttyUSB0 -m c140xor target/firmware/board/compal_e86/loader.compalram.bin`

1.  "Briefly press the power-on button of your phone (short push, not
    like a regular phone boot!)."
2.  see
    [this](http://bb.osmocom.org/trac/wiki/flashing_new#Bootingthephonedownloadingloadertoram)
    for details of expected output
3.  If output is as expected, then continue

### Load Loader

Load the "loader" into ram and

1.  in a new terminal run:

` $ $REPO/src/host/osmocon/osmoload memdump 0x000000 0x2000 compal_loader.bin`

1.  if success continue

### Install Loader

Install the "loader" to flash.

1.  run:

` host/osmocon/osmoload fprogram 0 0x012000 target/firmware/board/compal_e86/?loader.compalram.bin?`

1.  

## Do Evil Things
