### Direct Installation (Ubuntu version)

--- Gtkwave ---

gtkwave is good in the Universe repository. If you've already got that
linked in your /etc/apt/sources.list file, then installation is as
simple as:

` sudo apt-get install gtkwave`

--- Compiling icarus verilog ---

Icarus verilog, on the other hand, is buggy in the Jaunty repository. So
you'll want to compile it by hand.

-   Fetch the .tar.gz file:

` wget `[`ftp://ftp.icarus.com/pub/eda/verilog/snapshots/verilog-20090923.tar.gz`](ftp://ftp.icarus.com/pub/eda/verilog/snapshots/verilog-20090923.tar.gz)\
` tar xvzf verilog-20090923.tar.gz`\
` cd verilog-20090923`

-   Make sure you have the necessary compile tools:

` sudo apt-get install build-essential flex bison g++`

-   Compile and install:

` ./configure `\
` make`\
` sudo make install   `

-   Go get a cup of tea after you type "make", because compiling takes a
    while. But when you get back, you should be good to go. Copy
    William's makefile into your code directory and get to work. Now you
    have your usual development tools at your fingertips. (Emacs and
    Gedit have sweet colorization modes for verilog.)

### Direct Installation (Mac OSX Version)

Spartan instructions follow...

-   Install XCode tools from developer.apple.com
-   Install macports from macports.org. I don't know how macports plays
    with fink, so be wary if your using fink.
-   Install Icarus verilog with macports

```{=html}
<!-- -->
```
    sudo port install iverilog

-   Install GTKWave with macports. This will actually take a while on a
    fresh install of macports, so go and watch a tv show.

```{=html}
<!-- -->
```
    sudo port install gtkwave

-   You can now launch iverilog, vvp and gtkwave from the command line,
    and use the makefile provided with the workshop.

[Category:FPGAWorkshop](Category:FPGAWorkshop)
