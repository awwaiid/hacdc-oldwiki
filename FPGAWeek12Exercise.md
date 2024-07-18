-   Download the Frequency Counter and Frequency Generator reference
    designs from
    <http://www.xilinx.com/products/boards/s3estarter/reference_designs.htm>
-   Download the Picoblaze processor core from
    <http://www.xilinx.com/products/ipcenter/picoblaze-S3-V2-Pro.htm>
-   Unzip these projects & picoblaze source to your \~/Projects
    directory (or appropriatlely)
-   Implementing the projects directly
    -   Each project comes with a .bit file that you can use to program
        the FPGA starter kit with. Use impact to program the chip.
    -   On Windows, you can run the install batch scripts to run impact
        automatically.
    -   Find a buddy with a board, and each of you program your
        respective boards. Grab an SMA cable and use that to check the
        output of the generator with the counter.
-   Implementing the projects through ISE
    -   Implementing the frequency counter
        -   In the frequency counter folder, there is a pdf. It is the
            readme for the project. It will be your friend - it details
            how to quickly run the project, setup the ISE project,
            design details for the hardware and picoblaze software, and
            some more project ideas.
        -   In ISE, create a new design called "s3e_ref_freq_count" in
            your \~/Projects directory.
        -   Add the existing .vhd and .ucf sources from the frequency
            counter reference design folder that you unzipped
        -   Add the existing .vhd source for kcpsm3.vhd from the
            picoblaze VHDL source folder
        -   A portion of the design uses a undocumented mode of
            operation for the S3E DCM. Instructions for enabling this
            can be found in the dcm_fixed_osc.vhd file. In my
            experience, this breaks P&R (-will), and this should be
            removed in order to complete the design. The DCM is simply
            working in an free-running oscillator mode; this is merely
            used to provide a frequency source for testing and its
            removal will not adversely affect the design.
            -   You'll need to modify the **frequency_counter.vhd** file
                in the project, to remove the instance of
                'dcm_fixed_osc.vhd' from the design. We won't be doing
                anything in-depth with VHDL so don't be intimidated by
                the different language syntax.
            -   You'll want to comment out the component dcm_fixed_osc
                (approx line 117) . In VHDL, comments are done with
                double hypens, --.
            -   Commented out component

```{=html}
<!-- -->
```
    --
    -- Fixed frequency oscillator using a DCM
    --
    --component dcm_fixed_osc 
    --  port(    clk_out : out std_logic;
    --        kick_start : in std_logic   );
    --  end component;  

-   -   The instantiation of the dcm_fixed_osc needs to be commented out
        (approximately line 223)
    -   Commented portion

```{=html}
<!-- -->
```
    --  dcm_fixed_oscillator: dcm_fixed_osc
    --  port map (    clk_out => dcm_oscillator,
    --             kick_start => source_control(7) );

-   -   Now we'll need to change the multiplexer. To keep the design
        nearly intact, we'll replicate the ring oscillator signal twice
        (approx line 245).
    -   Changed multiplexer

```{=html}
<!-- -->
```
    freq_for_measurement <= sma_clk when (source_control(1 downto 0)="00") 
                         else clk_50mhz when (source_control(1 downto 0)="01") 
                         else ring_oscillator when (source_control(1 downto 0)="10") 
                         else ring_oscillator;

-   -   Select the top level module, and take it through the
        implementation process - synthesis, place and route, generate
        programming file.
    -   Use impact to program the .bit file to the FPGA! It should

-   -   Implementing the frequency generator
        -   In the frequency generator folder, there is a pdf. It is the
            readme for the project. It will be your friend - it details
            how to quickly run the project, setup the ISE project,
            design details for the hardware and picoblaze software, and
            some more project ideas.
        -   In ISE, create a new design called "s3e_ref_freq_ref" in
            your \~/Projects directory.
        -   Add the existing .vhd and .ucf sources from the frequency
            ref reference design folder that you unzipped
        -   Add the existing .vhd source for kcpsm3.vhd from the
            picoblaze VHDL source folder
        -   A portion of the design uses a undocumented mode of
            operation for the S3E DCM. Instructions for enabling this
            can be found on page 13 of the Frequency generator
            documentation. **The design will not work if the
            instructions are not followed!**
        -   Afer this is done, you should be able to implement this
            design and program the FPGA with impact.

-   Things you can do!
    -   You can use the .ucf file to move around the pin assignments.
        For instance, you can have the frequency counter read the clock
        input off of a stake or one of the pmod headers.3
    -   Easy extension - create a second ring oscillator, called
        ring_osc2. You can extend the ring_osc.vhd for this purpose,
        adding additional delay stages will decrease the frequency
        generated. Follow a similar format, to the rest of the VHDL
        code, to declare the component, instantiation, a second
        ring_oscillator signal, and modify the multiplexer.
        -   Once that is done, synthesis, P&R, and program the design.
            Select the second ring oscillator and see what its frequency
            is!
    -   Look at the PDF's which come with the reference designs for more
        ideas!

[Category:FPGAWorkshop](Category:FPGAWorkshop)
