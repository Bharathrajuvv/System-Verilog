module test;
  bit clk;
  bit rst;
  
  dff inf(clk,rst);
  d_ff duv(inf);
  
  initial clk =0;
  always #5 clk = ~ clk;
  initial begin
    $dumpfile("test.vcd");
    $dumpvars;
    rst=1;
    inf.d=0; #10;
    rst=0;
    inf.d=1; #10;
    inf.d=1; #10;
    inf.d=0; #10;
    inf.d=1; #10;
    inf.d=0; #10;
    inf.d=1; #10;
    #50 $finish;
  end
endmodule

