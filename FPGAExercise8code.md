## Level-to-pulser

Finite state machine implementation of a device that takes a level
change (low to high) and turns it into a one-period pulse.

    module levelToPulse(clk, in, out, reset);
       
       input  clk, in, reset;
       output reg out;
       reg  [1:0]  state, next;

       // States
       parameter WAIT_LOW = 0; 
       parameter WAIT_HIGH = 1;
       parameter RISING = 2; // I've just seen a rising edge
       parameter PULSE = 3; // I'm in the process of generating a pulse

       // Reset or update the state on every clock
       always @ (posedge clk or reset) 
         begin
            if (reset)
              begin
                 state <= WAIT_LOW;
                 next <= WAIT_LOW;
                 out = 0;
              end
            else
              state <= next;
         end

       // What to do in each state
       always @ (state or in) begin 
          case (state)                       
            WAIT_LOW:
              begin
                 if (in == 1) 
                   next = RISING;
              end
            RISING:
              begin
                 out = 1; 
                 next = PULSE;
              end
            PULSE:
              begin
                 out = 0;
                 if (in == 0) 
                   next = WAIT_LOW;
                 else
                   next = WAIT_HIGH;
              end
            WAIT_HIGH:
              if (in == 0)
                next = WAIT_LOW;
          endcase // case (state)

       end

    endmodule 

## Level-to-pulser Testbench

    module test_stateMachine();
       // Parameters
       parameter CLKPERIOD  = 20;   // 50MHz at 1ns
       parameter FINISHTIME = 1000; // 1ms
       
       // DUT inputs

       reg clk, in, reset;
       
       // DUT outputs
       wire out;
          
       // DUT instantiation
       // 
       levelToPulse DUT(clk, in, out, reset);
           
       // Stimulus

       // Clock generation
       always
         #(CLKPERIOD/2) clk = ~clk;

       // Initial conditions
       initial
         begin
            in = 0;
            clk = 1;
            reset = 0;
            // When at finishtime -- this shouldn't happen.  It's just a safety.
            #FINISHTIME $display ("Reached the end of the sidewalk: %5d", $time);
            $finish;        
        end

       // Inputs
       initial
         begin

            //  Reset and wait
            #3 reset = 1; 
            #3 reset = 0;

            repeat(5)
              #CLKPERIOD;

            // Go level high
            in = 1;
            repeat(5)
              #CLKPERIOD;

            // Go low
            in = 0;
            repeat(4)
              #CLKPERIOD;

            // Delay a short time so that input is in different phase with the clock
            #(CLKPERIOD / 2);
            
            in = 1;
            repeat(5)
              #CLKPERIOD;


            $display("-----------------------");
            $display("- Normal End at %5t -", $time);
            $display("-----------------------");
            $finish;
            
            
         end


       // Monitor
       initial
         begin
            $dumpfile ("test_stateMachine.lxt");
            $dumpvars(0, test_stateMachine); 
         end

       
    endmodule 

[Category:FPGAWorkshop](Category:FPGAWorkshop)
