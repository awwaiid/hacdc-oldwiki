## References

Some links to get us started:

[Bit](wikipedia:Bit)

[Byte](wikipedia:Byte)

[Pointer](wikipedia:http:Pointer_(computing))

[6502](wikipedia:MOS_Technology_6502)

[6502 instruction
set](http://e-tradition.net/bytes/6502/6502_instruction_set.html)

[Atari 8-bit documentation online](http://www.atariarchives.org/)

[Atari 8-bit memory
map](http://www.atariarchives.org/mapping/memorymap.php)

[Atari 800 emulator](http://atari800.sourceforge.net/)

[Altirra - an Atari 800 emulator for
Windows](http://www.virtualdub.org/altirra.html)

[A ton of Atari 8-bit
documentation](http://thepiratebay.org/torrent/5576778)

[Atari 8-bit
ROMS](http://sourceforge.net/projects/atari800/files/ROM/Original%20XL%20ROM/xf25.zip/download)

[Space
Invaders](http://www.atarimania.com/game-atari-400-800-xl-xe-space-invaders_4831.html)

git repository for work so far is at
<git://git.cluephone.com/atari8/spaceinvaders/>

[gitweb view of
above](http://git.cluephone.com/git/gitweb.cgi?p=atari8/spaceinvaders)

## Getting Started

prerequisites

-   knowledge
-   tools
    -   emulator
    -   cc65
    -   roms
    -   documentation of the atari 800

Toolchain

`   get and install cc65, etc.`

`   * description of the various tools included in the package`

Set up your info file:

`   jason started with the example info file from the cc65 website`\
`   `[`http://www.cc65.org/doc/da65-4.html#ss4.7`](http://www.cc65.org/doc/da65-4.html#ss4.7)

`   ** notes about setting up your info file`\
`       tell the DA what is code, what is a bytetable, what is a list of addresses`\
`       tell the DA about the labels you are aware of`

`       iterative process of creating this info file as you learn more about the program`

`       eventually naming functions, etc.`

disassemble your ROM

`da65 --start-addr 0xa000 Space\ Invaders.rom --comments 3`

re-assemble your ROM

`   first time, this should be from the base output from the disassembly`\
`   subsequent assemblies will include changes that you made to the ASM in your quest for information`

ITERATE

[6502 cross-compiler and tools](http://www.cc65.org)

[Atarimania 8-bit
games](http://www.atarimania.com/pgemainsoft.awp?type=G&system=8)

[Category:Classes](Category:Classes)
