// Code your testbench here
// or browse Examples
class static_eg;
  rand bit [8:0] a,b;
  
  constraint level1 {a inside {[20:40]};}
  static constraint level2 {b inside {60,70};}
endclass

module tb;
  static_eg sta1,sta2;
  initial begin
    sta1=new();
    sta2=new();
    
    sta1.randomize();
    sta2.randomize();
    $display("Before disable constraint");
    $display("sta1: a=%0d b=%0d ",sta1.a,sta2.b);
    $display("sta2: a=%0d b=%0d ",sta1.a,sta2.b);
    
    sta2.level1.constraint_mode(0);
    sta1.randomize();
    sta2.randomize();
    $display("After disable constraint");
    $display("sta1: a=%0d b=%0d ",sta1.a,sta2.b);
    $display("sta2: a=%0d b=%0d ",sta1.a,sta2.b);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 09:58 2025
Before disable constraint
sta1: a=24 b=70 
sta2: a=24 b=70 
After disable constraint
sta1: a=25 b=60 
sta2: a=25 b=60 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
