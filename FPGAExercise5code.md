    Code from 4 person hacking session on 11/11.

    The following code may or may not work properly - It appears to give relatively sane counter output in GTKWAVE. 

    // FALLING EDGE D FLIP FLIP MODULE:
    //==============================================
    module d_ff_gates (d, clk, rst, q, q_bar);

    input d, clk, rst;
    output q, q_bar;

    wire n1,n2,n3,q_bar_n;
    wire cn,dn,n4,n5,n6;

    // First Latch

    not (n1,d);
    nand (n2,d,clk);
    nand (n3,n1,clk);
    nand (dn,q_bar_n,n2);
    nand (q_bar_n,dn,n3, !rst);

    // Second Latch
    not (cn,clk);
    not (n4,dn);
    nand (n5,dn,cn);
    nand (n6,n4,cn);
    nand (q,q_bar,n5);
    nand (q_bar,q,n6, !rst);

    endmodule


    // FALLING EDGE D FLIP FLIP TESTBENCH:
    //==============================================
    module d_ff_gates_tb;
      reg d, clk;
      wire q, q_bar;

      d_ff_gates dut(d, clk, q, q_bar);

      initial
      begin
        d=0;  #1;

        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;

        d=1;   #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
      end

      initial
      begin
        $dumpfile ("waves.lxt");
        $dumpvars (0, d_ff_gates_tb);
      end

    endmodule




    // 4 BIT COUNTER MODULE:
    //==============================================
    module upcounter (rst, clk, enable, q, qb);

    input rst, clk, enable;
    output [3:0] q, qb;

    wire d0, d1, d2, d3; // input wires
    wire a0, a1;         // and wires

    //q[1] = 1'b0; q[2] = 1'b0; q[3] = 1'b0; // init q


    xor (d0, q[0], 1'b1);                   // d0 = q0 xor 1
    d_ff_gates dff0(d0, clk, rst, q[0], qb[0]);

    xor (d1, q[1], q[0]);                   // d1 = q1 xor q0
    d_ff_gates dff1(d1, clk, rst, q[1], qb[1]);

    and (a0, q[1], q[0]);
    xor (d2, q[2], a0);                     // d2 = q2 xor (q1 && q0)
    d_ff_gates dff2(d2, clk, rst, q[2], qb[2]);

    and (a1, q[2], q[1]);
    xor (d3, q[3], a1);                     // d3 = q3 xor (q2 && q1 && q0)
    d_ff_gates dff3(d3, clk, rst, q[3], qb[3]);

    endmodule


    // 4 BIT COUNTER TESTBENCH:
    //==============================================
    module upcounter_tb;
      reg rst, clk, enable;
      wire [3:0] q, qb;

      upcounter dut(rst, clk, enable, q, qb);

      initial
      begin
        rst = 1;
        enable = 0;
        clk=0; #1;

        rst = 0;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
        clk=0; #1;
        clk=1; #1;
      end

      initial
      begin
        $dumpfile ("waves.lxt");
        $dumpvars (0, upcounter_tb);
      end

    endmodule

[Category:FPGAWorkshop](Category:FPGAWorkshop)
