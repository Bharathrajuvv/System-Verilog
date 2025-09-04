// Code your testbench here
// or browse Examples
class example;
  bit [7:0] data;
  int bh;
endclass

module tb;
  example ex1, ex2;
  initial begin
    ex1=new();
    ex1.data=2;
    ex1.bh=3;
    $display("first ex1=%0h,bh=%0h",ex1.data,ex1.bh);
    
    ex2.data=4;
    ex2.bh=5;
    $display("Second ex2=%0h,bh=%0h",ex2.data,ex2.bh);
  end
endmodule
