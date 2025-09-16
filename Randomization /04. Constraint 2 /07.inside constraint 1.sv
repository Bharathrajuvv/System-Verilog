// Code your testbench here
// or browse Examples
class bharath;
  randc int x;
  constraint c{(x inside {[20:30]});}
endclass

module tb;
  initial begin
    bharath bh;
    bh=new();
    
    $display("========Output of inside constraint==========");
    $display("=============================================");
    repeat (20)begin
      void'(bh.randomize());
      $display("value: %0d", bh.x);
    end
    $display("=============================================");
  end
endmodule


Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 09:51 2025
========Output of inside constraint==========
=============================================
value: 23
value: 24
value: 28
value: 29
value: 27
value: 30
value: 22
value: 26
value: 25
value: 20
value: 21
value: 22
value: 30
value: 28
value: 21
value: 29
value: 23
value: 25
value: 26
value: 20
=============================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
