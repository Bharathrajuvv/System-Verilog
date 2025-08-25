// Testbench
module test;
    bit clk;
    bit rst;
    up_down inf(clk, rst);  

    up_down_counter duv(inf);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("test.vcd");
        $dumpvars;
        $monitor("time=%0t clk=%0d rst=%0d d=%0d count=%0d", 
                  $time, clk, rst, inf.d, inf.count);
    end

    initial begin
        clk = 0;
        rst = 1;   
        inf.d = 1;
        #10 rst = 0; 
        
        #100;
        inf.d = 0;
        #10 rst = 1;  
        #10 rst = 0;
        
        #100;
        rst = 1;
        #20;
        $finish;
    end
endmodule
