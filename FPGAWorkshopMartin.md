Three ideas so far:

Multiple 8-bit game console sound chip emulator. Generate the sounds of
the '80s: C64, NES, Atari, etc. I need to research some of the chips but
it looks like there is plenty of info out there. Manuals/schematics:

-   [Mikes Arcade](http://www.mikesarcade.com/arcade/manuals.html)
-   [Important Space Invader
    information](http://www.brentradio.com/SpaceInvaders.htm)
-   [TI 76489 Audio
    Chip](http://web.inter.nl.net/users/J.Kortink/home/articles/sn76489/)
-   [PicoBlaze D/A converter design
    example](http://www.xilinx.com/products/boards/s3estarter/files/s3esk_picoblaze_dac_control.pdf)
-   [fpga-synth.net - FPGAs to build/design synthesizers and audio
    processing engines](http://www.fpga.synth.net/)

Limited AM radio. Use passive front end Nyquist filter, digital
down-converter and low-pass filter to receive the lower part of the AM
broadcast band. Got the idea from Oct '09 Circuit Cellar article
'Multi-rate Techniques and CIC Filter'. Success would be anything that
worked better than the chunk of geranium and safety pin radio from grade
school.

-   [Xilinx LogiCORE CIC (Cascaded Integrator-Comb)
    compiler](http://www.xilinx.com/support/documentation/ip_documentation/cic_compiler_ds613.pdf)

Game of life analyzer. Run game of life for many generations while
saving/encoding previous states of the game array to look for repeated
and other patterns. VGA game output would be fun too. Some fun life/CA
links:

<http://web.cecs.pdx.edu/~mperkows/CLASS_573/MARCH_3_06/D_0000_Intro-Cellular-Automata-Artificial-Life.ppt>
<http://web.cecs.pdx.edu/~mperkows/CLASS_573/MARCH_3_06/D_0050.Margolus-Physical-Reversible-Models-of-CAs.ppt>
<http://www.it.lth.se/suleyman/ref_docs/malki_CIMSA%2005.pdf>

1/27/10 - Patched together some Pong code (game not the professor) on
the Spartan 3E dev board to learn VGA interface. Pong code lacks
sounds - might as well give that a try. 8/25/10 - Run ISE simulator
under Win 7 - set webservices to startup automatically

[Category:FPGAWorkshop](Category:FPGAWorkshop)
