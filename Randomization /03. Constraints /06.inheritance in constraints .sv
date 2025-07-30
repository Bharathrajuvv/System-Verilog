// Code your testbench here
// or browse Examples
class parent;
  rand bit[6:0] a;
  constraint level{a>0;a<20;}
endclass

class child extends parent;
  constraint level {a inside{[20:60]};}
endclass

module tb;
  parent x;
  child y;
  initial begin
    x=new();
    y=new();
    repeat(8)begin
      x.randomize();
      $display("Parent class: a=%0d",x.a);
    end
    
    repeat(8)begin
      y.randomize();
      $display("Child class: a=%0d",y.a);
    end
  end
endmodule

    
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 08:59 2025
Parent class: a=4
Parent class: a=5
Parent class: a=12
Parent class: a=15
Parent class: a=5
Parent class: a=3
Parent class: a=18
Parent class: a=5
Child class: a=22
Child class: a=60
Child class: a=29
Child class: a=32
Child class: a=34
Child class: a=30
Child class: a=31
Child class: a=21
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
