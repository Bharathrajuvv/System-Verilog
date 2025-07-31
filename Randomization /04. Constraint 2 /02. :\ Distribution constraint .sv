// Code your testbench here
// or browse Examples
class distu;
  rand int data;
  constraint c {data dist{[1:100]:/70,[101:255]:/30};}
endclass

program tb;
  initial begin
    distu item=new();
    repeat(20)begin
      item.randomize();
      $display("Constraint values=%0d",item.data);
    end
  end
endprogram

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:39 2025
Constraint values=3
Constraint values=17
Constraint values=15
Constraint values=74
Constraint values=51
Constraint values=109
Constraint values=212
Constraint values=29
Constraint values=95
Constraint values=210
Constraint values=17
Constraint values=37
Constraint values=236
Constraint values=82
Constraint values=64
Constraint values=95
Constraint values=49
Constraint values=23
Constraint values=68
Constraint values=49
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
