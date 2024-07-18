this is known broke - will

    //////////////////////////////////////////////////////////////////////////////////
    // Company: 
    // Engineer: 
    // 
    // Create Date:    11:23:27 01/28/2010 
    // Design Name: 
    // Module Name:    frequency_counter 
    // Project Name: 
    // Target Devices: 
    // Tool versions:  
    // Description: Verilog implementatino of the frequency counter reference
    // design from Xilinx for Spartan 3E Starter Kit
    //
    // Dependencies: 
    //
    // Revision: 
    // Revision 0.01 - File Created
    // Additional Comments: 
    //
    //////////////////////////////////////////////////////////////////////////////////
    module frequency_counter(
        output [7:0] led,
        input [4:0] sw,
        output strataflash_oe,
        output strataflash_ce,
        output strataflash_we,
        inout [7:4] lcd_d,
        output lcd_rs,
        output lcd_rw,
        output lcd_e,
        input sma_clk,
        input clk_50mhz
        );

        // signals for counting the test clock
        reg [3:0] ab_switch_delay;
        reg a_count_ce, b_count_ce;
        reg [31:0] a_count, b_count;
        reg a_count_rst, b_count_rst;
        reg freq_for_measurement;
        wire test_clk;
        
        // signals for 1 second interrupt generation and couter switching
        reg ab_switch;  
        reg [99:0] interrupt_delay;
        reg [25:0] one_second_count;
        reg one_second_pulse;
        reg interrupt;
        reg [7:0] source_control;

        // signals for processor interconnect
        reg [7:0] in_port;
        wire [7:0] out_port;
        wire write_strobe, read_strobe;
        wire [7:0] port_id;
        wire interrupt_ack;
        wire [17:0] instruction;
        wire [9:0] address;

        // lcd wires
        reg [7:0] lcd_reg;
        wire lcd_drive;
        wire lcd_output_data;

        // led reg
        reg [7:0] led_reg;

        // ring osscillator instantiations
        ring_osc logic_oscillator (.reset(source_control[6]),.osc_out(ring_oscillator));
        ring_osc2 logic_oscillator2 (.reset(source_control[6]),.osc_out(ring_oscillator2));

        // frequency selection mux - purely combinational
        always@(sma_clk or clk_50mhz or ring_oscillator or ring_oscillator2)
            if(source_control[1:0] == 2'b00)
                freq_for_measurement = sma_clk;
            else if(source_control[1:0] == 2'b01)
                freq_for_measurement = clk_50mhz;
            else if(source_control[1:0] == 2'b10)
                freq_for_measurement = ring_oscillator2;
            else
                freq_for_measurement = ring_oscillator;

        // global clock buffer the test clock       
        BUFG buffer_clkin(.O(test_clk), .I(freq_for_measurement));      

        // counter switch control
        always@(posedge test_clk)       
        begin
            ab_switch_delay <= {ab_switch_delay[2:0], ab_switch};
            case(ab_switch_delay[3:1])
                3'b000: begin
                    a_count_ce <= 1;
                    b_count_ce <= 0;
                    end
                3'b111: begin
                    a_count_ce <= 0;
                    b_count_ce <= 1;
                end
                default: begin
                    a_count_ce <= 1;
                    b_count_ce <= 0;
                end
            endcase
        end
        
        // test counters
        always@(posedge test_clk or posedge a_count_rst)
            if(a_count_rst)
                a_count <= 'b0;
            else if(a_count_ce)
                a_count <= a_count+1;
            else
                a_count <= a_count;

        always@(posedge test_clk or posedge b_count_rst)
            if(b_count_rst)
                b_count <= 'b0;
            else if(b_count_ce)
                b_count <= b_count+1;
            else
                b_count <= b_count; 

        // one second interrupt generation and clock switching
    /*  always@(posedge clk_50mhz)
        begin
            // divide by 50,000,000 to generate pulse
            if(one_second_count == 26'd49999999)
            begin
                one_second_count <= 'b0;
                one_second_pulse <= 1'b1;
            end
            else
            begin
                one_second_count <= one_second_count + 1;
                one_second_pulse <= 1'b0;
            end
            
            // delay 100 clock cycles before generating interrupt
            interrupt_delay <= {interrupt_delay[98:0], one_second_pulse};
            
            // interrupt generation
            if (interrupt_ack == 1'b1)
                interrupt <= 1'b0;
            else if (interrupt_delay[99] == 1'b1)
                interrupt <= 1'b1;
            else
                interrupt <= interrupt;
                
            // counter selection switch toggle's each second
            if (one_second_pulse == 1'b1)
                ab_switch <= ~ab_switch;
        end*/
    always@(posedge clk_50mhz)
        begin
            // divide by 50,000,000 to generate pulse
            if(one_second_count == 26'd49999999)
            begin
                one_second_count <= 'b0;
                one_second_pulse <= 1'b1;
            end
            else
            begin
                one_second_count <= one_second_count + 1;
                one_second_pulse <= 1'b0;
            end
        end
    always@(posedge clk_50mhz)

    begin
                // delay 100 clock cycles before generating interrupt
            interrupt_delay <= {interrupt_delay[98:0], one_second_pulse};
    end

    always@(posedge clk_50mhz)
        begin
                // interrupt generation
            if (interrupt_ack == 1'b1)
                interrupt <= 1'b0;
            else if (interrupt_delay[99] == 1'b1)
                interrupt <= 1'b1;
            else
                interrupt <= interrupt;
    end     

    always@(posedge clk_50mhz)
    begin
        // counter selection switch toggle's each second
            if (one_second_pulse == 1'b1)
                ab_switch <= ~ab_switch;
            else
                ab_switch <= ab_switch;
            end
            
            
        // picoblaze instantiation
        kcpsm3 processor (.address(address), 
            .instruction(instruction),
            .port_id(port_id),
            .write_strobe(write_strobe),
            .out_port(out_port),
            .read_strobe(read_strobe),
            .in_port(in_port),
            .interrupt(interrupt),
            .interrupt_ack(interrupt_ack),
            .reset(reset),
            .clk(clk_50mhz));
        fc_ctrl program_rom (.address(address),
            .instruction(instruction),
            .proc_reset(proc_reset),
            .clk(clk_50mhz));
            
        // processor input ports
        always@ (posedge clk_50mhz)
            case(port_id[7:4])
                // read A counter
                4'b0000: in_port <= a_count[7:0];
                4'b0001: in_port <= a_count[15:8];
                4'b0010: in_port <= a_count[23:16];
                4'b0011: in_port <= a_count[31:24];         
                // read B counter
                4'b0100: in_port <= b_count[7:0];
                4'b0101: in_port <= b_count[15:8];
                4'b0110: in_port <= b_count[23:16];
                4'b0111: in_port <= b_count[31:24];     
                // read slide switches
                4'b1000: in_port <= {3'b000, ab_switch, sw};
                // read LC Ddata at address 90 hex
                4'b1001: in_port <= {lcd_d, 4'b0000};
                // original design used a dont care condition
                // I've decided to let it retain its value.
                default: in_port <= in_port;
            endcase 
        
        // output ports
        always@ (posedge clk_50mhz)
            if(write_strobe)
                case(port_id[3:0])
                    // LED register at address 0x01
                    4'b0001: led_reg <= out_port;
                    // Counter reset controls at 0x02
                    4'b0010: begin
                        a_count_rst <= out_port[0];
                        b_count_rst <= out_port[1];
                        end
                    // LCD data/controls at 0x04
                    4'b0100: begin
                        lcd_reg         <= out_port;
                        end
                    // Source selection and control at 0x08
                    4'b1000: source_control <= out_port;
                endcase

        // LCD controls
        assign lcd_rw_control = lcd_reg[1];
        assign lcd_drive = lcd_reg[3];
        assign lcd_output_data = lcd_reg [7:4];
        // LCD Outputs
        assign lcd_e = lcd_reg[0];
        assign lcd_rw = lcd_rw_control && lcd_drive;
        assign lcd_rs = lcd_reg[2];
        assign lcd_d = ((lcd_rw_control == 1'b0) && (lcd_drive == 1'b1)) ? lcd_output_data : 4'bZZZZ;
        
        // LED assignment
        //assign led = led_reg;
        // Debug assignments
        assign led[7]=led_reg[7]; //A counter
        assign led[6]=led_reg[0]; //B counter
        assign led[5]=a_count[10]; // should toggle at 8hz when enabled
        assign led[4]=b_count[10]; // should toggle at 8hz when enabled
        assign led[3]=one_second_count[24]; // should toggle very fast.
        assign led[2]=one_second_pulse; // once per second
        assign led[1]=interrupt_ack; //interrupt ack
        assign led[0]=interrupt; //interrupt

        // strataflash chip enable signals to disable onboard strataflash
        assign strataflash_we = 1'b1;
        assign strataflash_ce = 1'b1;
        assign strataflash_oe = 1'b1;

    endmodule

[Category:FPGAWorkshop](Category:FPGAWorkshop)
