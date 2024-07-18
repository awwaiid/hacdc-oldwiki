## Before We Start {#before_we_start}

Things you need to know going in:

-   We will be working on [Alternate Reality: The
    Dungeon](wikipedia:Alternate_reality_(video_game))
-   It ran on the [Atari 8-bit](wikipedia:Atari_8-bit_family)
-   The Atari 8-bit consisted of the following chips:
    -   [MOS 6502](wikipedia:MOS_6502)
    -   [ANTIC](wikipedia:ANTIC)
    -   [POKEY](wikipedia:POKEY)
    -   [PIA](wikipedia:PIA)
    -   [GTIA](wikipedia:GTIA)
-   A detailed memory map can be found here:
    [1](http://www.atariarchives.org/mapping/memorymap.php)
-   We will use the following tools in our work:
    -   [make](wikipedia:Make_(software))
    -   [cc65](wikipedia:cc65)
    -   [git](wikipedia:Git_(software))
    -   [IDA Pro](wikipedia:IDA_Pro)
    -   [the atari800 emulator](http://atari800.sourceforge.net/)
    -   some various Unix commands to process data
-   Some information about Atari 8-bit disk images:
    [2](http://www.atarimax.com/ape/docs/DiskImageFAQ/)

Our source information comes from here:
[3](http://www.atarimania.com/detail_soft-MENU-8-VERSION_ID-240.html)

We obtain the binaries by clicking on the "DOWNLOAD" link.

The .ZIP file contents look like this:

`Archive:  Alternate_Reality_The_Dungeon.zip`\
` Length   Method    Size  Ratio   Date   Time   CRC-32    Name`\
`--------  ------  ------- -----   ----   ----   ------    ----`\
`   92176  Defl:N    65207  29%  10-03-04 16:56  dc960629  Alternate Reality - The Dungeon _ disk 2 _ side B.atr`\
`   92176  Defl:N    54159  41%  10-03-04 16:55  2afec574  Alternate Reality - The Dungeon _ disk 2 _ side A.atr`\
`   92176  Defl:N      348 100%  10-03-04 16:11  58f056d5  Alternate Reality - The Dungeon _ character disk.atr`\
`   92176  Defl:N    56987  38%  10-03-04 16:57  20c4fd02  Alternate Reality - The Dungeon _ disk 3 _ side A.atr`\
`   92176  Defl:N    80533  13%  10-03-04 16:57  7c55f7c4  Alternate Reality - The Dungeon _ disk 3 _ side B.atr`\
`   92176  Defl:N    57507  38%  10-03-04 16:54  b605610d  Alternate Reality - The Dungeon _ disk 1.atr`\
`--------          -------  ---                            -------`\
`  553056           314741  43%                            6 files`

## Process the Boot Sector {#process_the_boot_sector}

We will concentrate on Disk 1 to begin with, since it is the boot disk.
It is an .ATR file, so we need to remove the first 16 bytes to convert
it into a raw image:

`$ dd if="Alternate Reality - The Dungeon _ disk 1.atr" of=ar11.img bs=16 skip=1`

We only want the first sector for now, so we will continue with our dd
Swiss Army knife:

`$ dd if=ar11.img of=11-s001.bin bs=128 count=1`

We want to look at it in hex first, so we will use hexdump:

`$ hexdump -v -C 11-s001.bin`

`00000000  01 01 00 06 06 06 a9 40  8d 30 02 a9 06 8d 31 02  |.......@.0....1.|`\
`00000010  a5 14 c5 14 f0 fc ad 01  d3 09 02 8d 01 d3 a9 10  |................|`\
`00000020  8d 0a 03 a9 00 8d c6 02  85 41 8d 04 03 a9 b0 8d  |.........A......|`\
`00000030  05 03 20 53 e4 30 fb ad  00 06 8d ff af 4c 00 b0  |.. S.0.......L..|`\
`00000040  70 41 40 06 9b 41 68 6f  79 20 70 69 72 61 74 65  |pA@..Ahoy pirate|`\
`00000050  73 21 20 20 43 68 61 6e  67 65 20 74 68 65 20 66  |s!  Change the f|`\
`00000060  69 72 73 74 20 62 79 74  65 20 69 6e 20 74 68 69  |irst byte in thi|`\
`00000070  73 20 73 65 63 74 6f 72  20 74 6f 20 61 20 30 2e  |s sector to a 0.|`

The first six bytes of this sector tell us where there the initial code
is loaded, and what address it is started from. The bytes are laid out
like this:

:   boot flag (unused) (1 byte)
:   number of sectors to load (1 byte)
:   load address (2 bytes)
:   run address (2 bytes)

The 6502 is a little endian processor, so the fields above are read as
\$01, \$01, \$0600, \$0606.

Before we dive into IDA, we're going to do things the hard way for a few
minutes. cc65 includes a disassembler called "da65". It is a capable
tool but not nearly as powerful as IDA. You can get an initial dump of
this sector with the command:

`$ da65 --start-addr 0x0600 11-s001.bin`

You will notice that da65 is not very smart about separating what is
clearly text (as seen in the hexdump above) from the code. Fortunately
da65 is at least smart enough to accept any clues you give it about the
code. da65 does not have a man page but it does have an .html page that
explains how the .info file for disassembly should look. The one we've
created for the boot sector looks like this:

`GLOBAL {`\
`    INPUTNAME       "11-s001.bin";`\
`    STARTADDR       $0600;`\
`    PAGELENGTH      0;                  # No paging`\
`    CPU             "6502";`\
`};  `\
\
`SEGMENT { START $0600;  END   $067F; NAME "boot"; };`\
\
`RANGE { START $0600; END $0601; TYPE ByteTable; };`\
`RANGE { START $0602; END $0605; TYPE AddrTable; };`\
`RANGE { START $0606; END $063F; TYPE Code; };`\
`RANGE { START $0640; END $0641; TYPE ByteTable; };`\
`RANGE { START $0642; END $0643; TYPE AddrTable; };`\
`RANGE { START $0644; END $067F; Type TextTable; };`\
\
`LABEL { NAME "RTCLOK"; ADDR $0012; SIZE 3; };`\
`LABEL { NAME "SOUNDR"; ADDR $0041; };`\
`LABEL { NAME "SDLST"; ADDR $0230; SIZE 2; };`\
`LABEL { NAME "COLOR2"; ADDR $02C6; };`\
`LABEL { NAME "DBUF"; ADDR $0304; SIZE 2; };`\
`LABEL { NAME "DAUX1"; ADDR $030A; };`\
`LABEL { NAME "PORTB"; ADDR $D301; };`\
`LABEL { NAME "DSKINV"; ADDR $E453; };`

Now, we tell da65 to use it:

`$ da65 -i 11-s001.info`
