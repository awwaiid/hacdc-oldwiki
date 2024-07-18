## Shift Register {#shift_register}

    //filename sr.v
    `include "timescale.v"

    module sr(D, Q, Q_regs, clk, rst);
        parameter Ndepth=4;
        parameter TP=1;

        input D, clk, rst;
        output Q;
        output [Ndepth-1:0] Q_regs;

        reg [Ndepth-1:0] Q_regs;

        assign Q = Q_regs[Ndepth-1];

    /* This is a comment block
    Hi Elliot
    This works fine! */

        always@(posedge clk)
            if(rst)
                Q_regs <= #TP 0; //This is a comment
            else
                Q_regs <= #TP {Q_regs[Ndepth-2:0],D};
    endmodule

## Shift Register Testbench {#shift_register_testbench}

     
    //
    // filename sr_tb.v
    //
    //  Exercise 6
    //  FPGA Workshop - HacDC
    //  Group think
    //
    `include "timescale.v"
    module sr_tb();
        // Parameters

        parameter CLKPERIOD = 20; // 50Mhz w/ 1ns time increments
        parameter FINISHTIME = 1000;

        // DUT INPUTS
        
        reg D;
        reg clk;
        reg rst;
        
        // DUT OUTPUTS
        wire Q;
        wire [3:0] Q_regs;
        
        // Misc
        reg finish;
        
        // Event defitions
        event reset;
        
        // DUT Instantiation
        // shift(.D(), .Q(), .Q_regs(), .clk(), .rst());
        sr DUT(.D(D), 
            .Q(Q), 
            .Q_regs(Q_regs), 
            .clk(clk), 
            .rst(rst));
        
        // --------
        // Stimulus
        // --------
            
        // Clk Generation
        always 
            #(CLKPERIOD/2) clk = ~clk;
        // Initial Conditions
        initial
        begin
            D       = 0;
            rst     = 0;
            clk     = 1;
            finish  = 0;
            // Wait to end the simulation
            #FINISHTIME
            $display("=============================");
            $display("I'm done now!");
            $display("Finished at time %5d", $time);
            $finish;
        end

        // Inputs
        initial
        begin
            #1 -> reset; //event calls like to occur after some
                            //period of time
            wait(finish);
            finish = 0;
            repeat (5) 
                #CLKPERIOD;
            D=1;
            wait (Q);
            #CLKPERIOD
            D=1;
            #CLKPERIOD
            D=0;
            #CLKPERIOD
            D=1;
            #CLKPERIOD
            D=0;
            repeat (5) 
                #CLKPERIOD;
            
            $display("================");
            $display("End of Stimulus");
            $display("Finishing at time %5d", $time);
            $finish;
            
        end
        
        // Event defitions
        always @(reset)
        begin
            $display ("Resetting the Registers");
            #(CLKPERIOD/2) rst = 1;
            #CLKPERIOD rst = 0;
            finish = 1;
        end
            
        // Monitor
        initial
        begin
            $dumpfile ("waves.lxt");
            $dumpvars(0,sr_tb);
        end
        
    endmodule

## Linear Feedback Shift Register {#linear_feedback_shift_register}

    module lfsr(Q, Q_regs, clk, rst);
        // x^5+x^3+1
        parameter N=5;
        parameter Tp=1;
        input clk, rst;
        output Q;
        output [N-1:0]
        Q_regs; reg [N-1:0] Q_regs;
        assign Q = Q_regs[0];
        always@(posedge clk)
            if(rst)
                Q_regs<= #Tp 5'b1;
            else
                Q_regs<= #Tp {Q_regs[3], Q_regs[2], Q_regs[1], Q_regs[0], Q_regs[4]^Q_regs[2]};
    endmodule

## LFSR Testbench {#lfsr_testbench}

    //
    //  Exercise 6
    //  FPGA Workshop - HacDC
    //  Group think
    //
    `include "timescale.v"
    module lfsr_tb();
        // Parameters

        parameter CLKPERIOD = 20; // 50Mhz w/ 1ns time increments
        parameter FINISHTIME = 2*1000;

        // DUT INPUTS
        
        reg clk;
        reg rst;
        
        // DUT OUTPUTS
        wire Q;
        wire [4:0] Q_regs;
        
        // Misc
        reg finish;
        
        // Event defitions
        event reset;
        
        // DUT Instantiation
        // lfsr(.Q(), .Q_regs(), .clk(), .rst());
        lfsr DUT(.Q(Q), 
            .Q_regs(Q_regs), 
            .clk(clk), 
            .rst(rst));
        
        // --------
        // Stimulus
        // --------
            
        // Clk Generation
        always 
            #(CLKPERIOD/2) clk = ~clk;
        // Initial Conditions
        initial
        begin
            rst     = 0;
            clk     = 1;
            finish  = 0;
            // Wait to end the simulation
            #FINISHTIME
            $display("=============================");
            $display("I'm done now!");
            $display("Finished at time %5d", $time);
            $finish;
        end

        // Inputs
        initial
        begin
            #1 -> reset; //event calls like to occur after some
                            //period of time
            wait(finish);
            finish = 0;
            repeat (62) 
                #CLKPERIOD;
            $display("================");
            $display("End of Stimulus");
            $display("Finishing at time %5d", $time);
            $finish;
            
        end
        
        // Event defitions
        always @(reset)
        begin
            $display ("Resetting the Registers");
            #(CLKPERIOD/2) rst = 1;
            #CLKPERIOD rst = 0;
            finish = 1;
        end
            
        // Monitor
        initial
        begin
            $dumpfile ("waves.lxt");
            $dumpvars(0,lfsr_tb);
        end
        
    endmodule

## Timescale

    //
    // filename timescale.v
    //
    `timescale 1ns / 10ps

[Category:FPGAWorkshop](Category:FPGAWorkshop)
