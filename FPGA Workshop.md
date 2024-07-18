## Main Topics

1\) Introduction to digital logic & design\
2) Verilog HDL modeling & testing\
3) FPGA's & using them.\
\
We will be taking an approach of reviewing & learning digital design,
implementing designs and methods of formally simulating and verifying
designs before moving into
[FPGA](http://en.wikipedia.org/wiki/Field-programmable_gate_array)
oriented work. This workshop will be more engineering oriented than
hobbyist/tinkerer oriented.

## Hardware

We'll be covering some FPGA specific topics and projects using real
hardware. The first half of the workshop will cover logic design,
implementation and testing. This will allow people to put off ordering
any hardware until they know that they actually want to pursue FPGA
development, since the dev board I've chosen for this is not cheap but I
feel is robust enough to be a good starting board for this group.\
\
The hardware we'll be using is the Xilinx Spartan 3AN development kit.
This kit is available from a few vendors for 199USD + shipping. This
will be discussed more later on. The kit includes programming cable, and
evaluation copies of some of the Xilinx tools."

## Tools

### Verilog Simulation and Waveform Viewing

Icarus verilog & gtkwave; for doing Verilog compilation, simulation and
waveform viewing. A makefile has been made to simplify the flow for any
exercises and projects we use these tools with. That makefile can be
found [**here**](iverilogmakefile). Instructions for
installing these programs on Mac osX and Ubuntu can be found here: [
**FOSS Verilog tool
installation**](FOSS_Verilog_tool_installation)\
=== FPGA Toolchain === After we finish up with covering Verilog
modeling, we'll move to the Xilinx ISE Webpack tools and actual work
with FPGAs. This software is available from Xilinx for free, and is
available for Windows and Linux platforms. This will be used for Verilog
compilation, simulation, synthesis of designs, design mapping, place and
routing of designs, bitstream generation and board programming.
Instructions for installing the Xilinx tools on the VM can be found
here:[ **Xilinx ISE Installation
Instructions**](Xilinx_ISE_Installation_Instructions)\
=== Virtual Machine === An OpenSuse Virtual Machine (VMWare based) will
be available for people to use in this course, if they wish. This will
have the icarus verilog tools and GTKwave loaded on it, along with
Firefox, gcc and make. The suseStudio team has encouraged the use of
their VMs in such a manner (teaching workshops). This is being built in
susestudio, and will be available as a live install as well.\
When we move over to the Xilinx tools, people will have to download and
install the Xilinx tools by themselves, since that material is
copyrighted. Instructions will be given for doing that.

The VMware VM image is ready (ver 0.5.2) for people to grab if they
wish. [**Get it
here.**](http://susestudio.com/download/d931a0f28972e3505eacf8d0bad28fc0/Digital_Design__FPGA_Workshop_VM_v4.i686-0.5.2.vmx.tar.gz)

The image also works with VirtualBox. Create a new machine, and when it
asks you for a hard drive, select use an existing drive. This takes you
to the hard-drives list dialog box. From there, file..create a new
drive, link it to the .vmdk file, select it, and you're all set. For the
rest, all defaults are ok. (Bother Elliot for hints with VBox.)

There are a few items of note regarding the VM\
\* Download is approximately 350MB, the tarball is about 1.5GB in size,
and the virtual disk will expand up to 20gigs dynamically.

-   The download link is a virgin, freshly built VM, so you'll be the
    first user booting it up since build.
-   There are two users, root and workshop. Both have the password
    'linux'
-   For the user workshop, \~/scripts/ is included in their \$PATH
-   Also, user workshop has a few small files in \~/resources/ including
    a simple upcounter design example.
-   May need to run the network configuration tools to ensure you get
    functional networking. I've experienced issues with the VM in
    suspend mode, switching networks on the host machine, and completely
    loosing network on the VM until rerunning the network config tools.
    They can be found poking around in the system settings for yast.
-   Currently, the Xilinx Cable Drivers aren't building on the VM (but
    all the other Xilinx tools work). If someone is a linux guru and
    wants to try to make it work, contact me at <teachmeFPGA@gmail.com>.
    My next attempt is to turn the vm into a live-install and try
    building the cable drivers on real hardware instead of a VM.
-   After loading the Xilinx settings (which will be covered in more
    detail when those tools are introduced), the current shell can no
    longer run icarus verilog flows. Start a new shell in order to run
    icarus verilog.
-   Its a fairly minimalist system, with the FOSS tools listed above
    load, along with firefox, gcc and nano. Use yast or yast2 in order
    to install any additional packages. example yast2 --install
    *packname*
-   If the download link stops working, the build has likely expired on
    the SuseStudio server. Please email <teachmeFPGA@gmail.com> if the
    download link no longer works.
-   Mad props to the susestudio team for making this possible

## Lecture

Lecture/Discussions will mainly be based on content from a pair of
courses in MIT's Opencourseware initiative. This content is licensed on
the Creative Commons Attribution NonCommercial Share-alike 3.0 license;
as a result, the electronic content generated by the workshop will also
need to be made available under the same license. This will allow people
to freely access just the discussion slides without watching through
videos.\
\
A [video](http://www.youtube.com/watch?v=Q06M_j49zRM) archive will be
[link building service](http://www.diamondlinks.net) made available for
those unable to attend. They are available here [
**here**](FPGAWorkshopTopics).

### List of Lectures

An archival list of lectures, including presentations and videos, can be
found [ **here**](FPGAWorkshopTopics)

*This is currently an incomplete list, additional topics will be added
as I solidify them - will*

  ------ --------------------- ----------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------
  Week   Date                  Topics Covered                                                                                                                      Exercise                                                                                                 Solutions/Approach
  10     December 16th, 2009   [Introduction to FPGAs - History, Capabilities and Features](http://wiki.hacdc.org/index.php/File:Week10_programmable_fabric.pdf)   Exploring designs and FPGA tools                                                                         Solutions
  11     December 23rd, 2009   [ISE Tutorial for Spartan 3E board](http://wiki.hacdc.org/index.php/File:ISE_Tutorial_for_S3E.pdf)                                  [ Counter Source ](FPGAExercise10code)                                                        [Video of HacDC FPGA blinkenlites](http://www.youtube.com/watch?v=_bxUEjCDVZ8)
  12     December 30th, 2009   Distribute kits, play with tutorial, work on usb drivers                                                                                                                                                                                     
  13     January 5th, 2010     [ Implement Frequency Counter and Frequency Generator reference designs](FPGAWeek12Exercise)                             [Spartan 3E Reference Designs](http://www.xilinx.com/products/boards/s3estarter/reference_designs.htm)   
  14     January 26th, 2010    [Intro to PicoBlaze](FPGAWorkshop13notes)                                                                                                                                                                                         
  15     February 2nd, 2010    Cancelled                                                                                                                                                                                                                                    
  16     February 16th, 2010   [Analysis of Frequency counter PicoBlaze reference design](FPGAWorkshop16Notes)                                                                                                                                                   
  17     March 6nd, 2010       [Picoblaze Flow / Hello World](FPGAWorkshop17Notes)                                                                                                                                                                               
  18     March 23rd, 2010      FPGA hackins.                                                                                                                                                                                                                                
  19     April 6th, 2010       FPGA hackins                                                                                                                                                                                                                                 
  19     April 20th, 2010      FPGA hackins                                                                                                                                                                                                                                 
                                                                                                                                                                                                                                                                            
  ------ --------------------- ----------------------------------------------------------------------------------------------------------------------------------- -------------------------------------------------------------------------------------------------------- --------------------------------------------------------------------------------

## Workshop requirements

This workshop will be free of charge to attend, but there are additional
needs in order to fully benefit from attending the workshop.

-   Open mind to learning
-   Willingness to read documentation, as the capacity for independent
    research is important for doing hardware design.
-   Willingness to commit time over this fall
-   Either ability to run a VMWare virtual machine, the ability to
    convert the VM for virtualBox, or ability to install the icarus
    verilog/gtkwave tools on your own. This will likely necessitate a
    laptop of some sort.
-   Xilinx.com account, for licensing Xilinx tools and IP.
-   Hardware will NOT be required at the beginning of the course but
    will be needed later on to run exercises and to do any interesting
    projects

## Workshop Frequently Asked Questions

1.  What operating systems will the FPGA toolchain be available on?
    1.  The Xilinx ISE Webpack is supported on Windows XP Pro, Windows
        Vista Business, Redhat Linux and Suse Linux Enterprise. For a
        detailed list of official OS support, check out the [Operating
        system support page on
        Xilinx.com](http://www.xilinx.com/ise/ossupport/index.htm). The
        tools will run on openSuse as well. Feel free to try other linux
        distros and post your results.
2.  What is the cost of the FPGA development board we'll be using?
    1.  The retail cost of the development board is typically around
        199-220 USD, plus shipping, from a few different vendors. Links
        for that are
        [here](FPGA_Workshop#Spartan_3AN_Starter_Kit).
3.  Will there be homework?
    1.  Since this isn't an academic course, there will not be graded
        homework in the traditional sense. I'll be choosing a few
        additional exercises that people can do outside of the workshop
        each week, if they wish, that will further help hone their
        skills.
4.  Will there be extensive C/C++ coding?
    1.  C experience is not a prerequisite for this workshop. There will
        not be any C/C++ coding involved in the workshop directly. There
        is one project that I've got in mind that may be of interest to
        people that are proficient in C/C++ and pick up hardware design
        rather well.

## Workshop Mailing List

A HacDC Mailman mailling list has been setup for this workshop. That
list is fpga@hacdc.org. You can subscribe to that list by sending an
email to fpga-request@hacdc.org with the subject line "subscribe" or
click the mailto link <fpga-request@hacdc.org?Subject=subscribe> and let
your email application handle it...

## Workshop Instructor

William Gibb, mad scientist. For contacting him regarding the workshop,
please email <teachmeFPGA@gmail.com>.

## References

### Grateful Dead Trees Reference

Fundamentals of Digital Logic with Verilog Design by Brown and Vranesic\
Verilog Quickstart: A Practical Guide to Simulation and Synthesis in
Verilog by Lee\
FPGA Prototyping using Verilog Examples by Chu.\
\
These texts will not be required for the course, but are very good
launching points for the topics that we are covering.

### Online References

#### General Resources

[Open Circuit Design](http://www.opencircuitdesign.com/) Open Source
design tools\
[Doulos Digital Design Resources](http://www.doulos.com/knowhow/) Good
learning and design references\
[**ASIC World**](http://www.asic-world.com/) Good learning references\
[Play Hookey Digital Design](http://www.play-hookey.com/digital/) Good
learning references\
[*'FPGA4Fun*](http://www.fpga4fun.com/) Lots of available IP\
[Companion website for Professor Pong Chu's Verilog
Book](http://academic.csuohio.edu/chu_p/rtl/fpga_vlog.html)\
[**OpenCores**](http://www.opencores.org) Very good repository for IP.
Also the home to the OpenRISC System on Chip project\
[Bucknell Handbook on Verilog
HDL](http://hdlplanet.tripod.com/verilog/verilog-manual.html#RTFToC0)
(Martin found this) Old but useful?\
[KD7IRS's Verilog - OpenHPSDR - Lectures](http://verilog.openhpsdr.org/)
Webcast style class, with lab\
[VA Tech Configurable Computing Lab
Wiki](http://pip0.ccm.ece.vt.edu/twiki/bin/view/Main/Spartan3Radio)
Simple Radio Structures on the Spartan3e Starter Kit\
[VA Tech Configurable Computing Lab
Wiki](http://pip0.ccm.ece.vt.edu/twiki/bin/view/Main/GNURadio) GNU
Radio - USRP for Spartan 3E\
[San Jose State University](http://www.engr.sjsu.edu/crabill/) Digital
design course (EE178) with Spartan 3E Development board and ISE 8.1 -
lecture & lab materials\
[George Washington University ECE128
Lab](http://www.seas.gwu.edu/~vlsi/ece128/SPRING/lab.html) Contains good
Verilog coding and testbench resources\
[FPGA Arcade](http://www.fpgaarcade.com/) Devoted to gaming on FPGAs,
Space Invaders in VHDL...\
[Simplified Floating Point for
DSP](http://instruct1.cit.cornell.edu/courses/ece576/FloatingPoint/index.html)
8-bit exponent and 9-bit mantissa and sign to fit into 18 bit IP
blocks - Thanks Cornell!

#### FPGA Vendors

[Xilinx](http://www.xilinx.com/)\
[Altera](http://www.altera.com/)\
[Actel](http://www.actel.com/)\
[Atmel FPGA](http://www.atmel.com/products/fpga/)\
[Silicon Blue](http://www.siliconbluetech.com/)\
[Point of Sale System](http://www.merchantos.com)\
[Lattice Semiconductor](http://www.latticesemi.com/)\
[Achronix](http://www.achronix.com/)\

#### Course Resources

[Icaurus Verilog](http://www.icarus.com/eda/verilog/)\
[GTKWave](http://gtkwave.sourceforge.net/)\
[VMware Player - Free download for Windows and
Linux](http://www.vmware.com/products/player/)\
[SUSE Studio](http://www.susestudio.com) SLED/OpenSUSE build service.
Make VMs, live installs, all customized\

#### Xilinx Links

[Xilinx Tutorials](http://www.xilinx.com/support/techsup/tutorials/)\
[Xilinx ISE 10.1 Tutorial and
files](http://www.xilinx.com/support/techsup/tutorials/tutorials10.htm)\
[ISE 10.1 In Depth Tutorial Direct link to
PDF](http://www.xilinx.com/direct/ise10_tutorials/ise10tut.pdf)\
[Xilinx
Documentation](http://www.xilinx.com/support/documentation/index.htm)
This includes device data sheets, user guides, IP documentation and
Xilinx software manuals\
[Xilinx Design Tools](http://www.xilinx.com/tools/designtools.htm) Xilnx
Software tools can be found here\
[Spatan 3E Starter
Kit](http://www.xilinx.com/products/devkits/HW-SPAR3E-SK-US-G.htm) Site
for the Spartan 3E kit\
[Spartan 3AN Starter
Kit](http://www.xilinx.com/products/devkits/HW-SPAR3AN-SK-UNI-G.htm)
Site for the Spartan 3AN kit\
[Free Video Training
courses](http://www.xilinx.com/support/training/free-courses.htm) Name
says it all\
[Yet Another Xilinx ISE 10.1
Tutorial](http://xess.com/appnotes/ise-10.pdf) For Xess Spartan-3
Development Board\

#### Spartan 3AN Starter Kit

[Spartan 3AN Starter
Kit](http://www.xilinx.com/products/devkits/HW-SPAR3AN-SK-UNI-G.htm)\
[AVNet Spartan 3AN Starter Kit sales
page](http://www.em.avnet.com/evk/home/0,1707,RID%253D0%2526CID%253D45129%2526CCD%253DUSA%2526SID%253D32214%2526DID%253DDF2%2526LID%253D32232%2526PRT%253D0%2526PVW%253D%2526BID%253DDF2%2526CTP%253DEVK,00.html)\
[NuHorizons - Xilinx Vendor](http://www.nuhorizons.com/) Do a search for
HW-SPAR3AN-SK-UNI-G\
[Digi-key Spartan 3AN Starter Kit Sales
page](http://search.digikey.com/scripts/DkSearch/dksus.dll?Cat=2621773&k=spartan%203an)\
Probably also at other [suppliers](suppliers).

#### Spartan 3E Starter Kit

[Digilent](http://www.digilentinc.com/)

##### Group Order Participants

NOTE: Xilinx has donated 15 spartan3 boards, which should arrive before
12/7

-   Daniel (obscurite on #hacdc on freenode)
-   Alden
-   Dan Barlow
-   Navid
-   Matt Liggett
-   Maitland Bottoms
-   Ben Peizik (benparse@yahoo.com)
-   Martin
-   Rob Seastrom (rs@seastrom.com)
-   Phillip Stewart
-   Tim F (smilemoose@gmail.com)
-   Nick
-   Brian

```{=html}
<!-- -->
```
-   Elliot
-   Justin

#### MIT OpenCourseWare links

[MIT OCW Terms of
Use](http://ocw.mit.edu/OcwWeb/web/terms/terms/index.htm)\
[OCW site for 6.004 - Computation
Structures](http://ocw.mit.edu/OcwWeb/Electrical-Engineering-and-Computer-Science/6-004Computation-StructuresFall2002/CourseHome/index.htm)\
[OCW site for 6.111 Introductory Digital Systems,
2006](http://ocw.mit.edu/OcwWeb/Electrical-Engineering-and-Computer-Science/6-111Spring-2006/CourseHome/index.htm)\

## FPGA Workshop Projects

List of FPGA projects people are working on at HacDC

  ------------------------------------------ -----------------------------------------------------------------------------------------------------------------
  Person                                     Project
  William Gibb                               [AD/DA controller for Spartan 3E/3A/3AN Development Kits](http://opencores.org/project,spi_core_dsp_s3ean_kits)
  Daniel (obscurite on #hacdc on freenode)   [Daniel's Project (Game of Life w/ Martin & Breakout VGA/LED?)](FPGAWorkshopDaniel)
  Alden                                      [ Alden's Project](FPGAWorkshopAlden)
  Dan Barlow                                 [ Barlows's Project](FPGAWorkshopBarlow)
  Navid                                      [ Navid's Project](FPGAWorkshopNavid)
  Matt Liggett                               [ Matt's Project](FPGAWorkshopMatt)
  Maitland Bottoms                           [ Maitland's Project](FPGAWorkshopMaitland)
  Ben Peizik (benparse@yahoo.com)            [ Ben's Project](FPGAWorkshopBen)
  Martin                                     [ Martin's Project](FPGAWorkshopMartin)
  Rob Seastrom (rs@seastrom.com)             [ Justin's Project](FPGAWorkshopJustin)
  Phillip Stewart                            [ Phillip's Project](FPGAWorkshopPhillip)
  Tim F (smilemoose@gmail.com)               [ Tims Project](FPGAWorkshopJustin)
  Nick                                       [ Nick's Project](FPGAWorkshopNick)
  Brian                                      [ PROM Burner/Reader](FPGAWorkshopBrian)
  Elliot                                     [ Elliots's Project](FPGAWorkshopElliot)
  Justin                                     [ Justin's Project](FPGAWorkshopJustin)
  Arc                                        [ Arcs SMT oven ](FPGAWorkshopArc)
  Davel (DLotts)                             [ Davel's Project](FPGAWorkshopDLotts)
  ------------------------------------------ -----------------------------------------------------------------------------------------------------------------

[Category:Classes](Category:Classes)
[Category:FPGAWorkshop](Category:FPGAWorkshop)
