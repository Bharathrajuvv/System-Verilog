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

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 02:40 2025
first ex1=2,bh=3

Error-[NOA] Null object access
testbench.sv, 16
  The object at dereference depth 0 is being used before it was 
  constructed/allocated.
  Please make sure that the object is allocated before using it. 
  
  #0 in tb at testbench.sv:16
  #1 in tb 
  

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.480 seconds;       Data structure size:   0.0Mb
Thu Sep  4 02:40:41 2025
Exit code expected: 0, received: 1

