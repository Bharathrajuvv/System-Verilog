// Code your testbench here
// or browse Examples
class distribution;
  rand int data;
  constraint c {data dist {8:=16,10:=20,[2:6]:=60};}
endclass

program tb;
  initial begin
    distribution item=new();
    repeat(20)begin
      item.randomize;
      $display(" Distribution values = %0d",item.data);
    end
  end
endprogram

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:37 2025
 Distribution values = 2
 Distribution values = 2
 Distribution values = 2
 Distribution values = 8
 Distribution values = 4
 Distribution values = 2
 Distribution values = 5
 Distribution values = 3
 Distribution values = 6
 Distribution values = 5
 Distribution values = 2
 Distribution values = 3
 Distribution values = 6
 Distribution values = 6
 Distribution values = 5
 Distribution values = 6
 Distribution values = 4
 Distribution values = 3
 Distribution values = 5
 Distribution values = 4
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
