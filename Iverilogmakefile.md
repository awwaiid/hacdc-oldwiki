This is made for the [Digital Design and FPGA
workshop](FPGA_Workshop) run in Fall 2009.\
== makefile == Assumptions: You have iverilog, vvp and gtkwave in your
\$PATH. iverilog and vvp are the Icarus Verilog package. gtkwave is the
GTKWave+ package.

In order to use this makfile, the TOOL INPUT section must be modified to
match your needs. This involves the following

-   Change the SRC macro to include your verilog source code files.
-   Change the TESTBENCH macro to include your verilog testbench.
-   Change the TBOUTPUT macro to the name of the file your dumping your
    testbench output too.

\
The posted makefile shows the TOOL INPUT macros pre-populated for
targeting an Arithmetic Logic Unit (alu).

    ###############################################################################
    #
    # ICARUS VERILOG & GTKWAVE MAKEFILE
    # MADE BY WILLIAM GIBB FOR HACDC
    # williamgibb@gmail.com
    # 
    # USE THE FOLLOWING COMMANDS WITH THIS MAKEFILE
    #   "make check" - compiles your verilog design - good for checking code
    #   "make simulate" - compiles your design+TB & simulates your design
    #   "make display" - compiles, simulates and displays waveforms
    # 
    ###############################################################################
    #
    # CHANGE THESE THREE LINES FOR YOUR DESIGN
    #
    #TOOL INPUT
    SRC = alu.v alu_func.v alu_regn.v dff.v
    TESTBENCH = alu_tb.v
    TBOUTPUT = waves.lxt    #THIS NEEDS TO MATCH THE OUTPUT FILE
                #FROM YOUR TESTBENCH
    ###############################################################################
    # BE CAREFUL WHEN CHANGING ITEMS BELOW THIS LINE
    ###############################################################################
    #TOOLS
    COMPILER = iverilog
    SIMULATOR = vvp
    VIEWER = gtkwave
    #TOOL OPTIONS
    COFLAGS = -v -o
    SFLAGS = -v
    SOUTPUT = -lxt      #SIMULATOR OUTPUT TYPE
    #TOOL OUTPUT
    COUTPUT = compiler.out          #COMPILER OUTPUT
    ###############################################################################
    #MAKE DIRECTIVES
    check : $(TESTBENCH) $(SRC)
        $(COMPILER) -v $(SRC)

    simulate: $(COUTPUT)
        $(SIMULATOR) $(SFLAGS) $(COUTPUT) $(SOUTPUT)

    display: $(TBOUTPUT)
        $(VIEWER) $(TBOUTPUT) &
    #MAKE DEPENDANCIES
    $(TBOUTPUT): $(COUTPUT)
        $(SIMULATOR) $(SOPTIONS) $(COUTPUT) $(SOUTPUT)

    $(COUTPUT): $(TESTBENCH) $(SRC)
        $(COMPILER) $(COFLAGS) $(COUTPUT) $(TESTBENCH) $(SRC)

## convenient file copy script {#convenient_file_copy_script}

Convenient file to copy the makefile from \~/resources/makefile to your
current directory. copy the script into a file, chmod +x the file and
place the file in your \$PATH. this assumes that \~/resources/makefile
does not have write permissions granted to it.

    #!/bin/bash
    #
    # William Gibb
    # Written for HacDC Digital Design and FPGA workshop
    #
    #variables!
    fileofjustice=~/resources/makefile

    #script it up!
    echo "Copying iVerilog makfile"
    if [ -r $fileofjustice ]; then
        cp $fileofjustice .
        chmod u+w ./makefile
        echo "makefile copied"
    else
        echo "You don't have the makefile at $fileofjustice"
    fi

[Category:FPGAWorkshop](Category:FPGAWorkshop)
