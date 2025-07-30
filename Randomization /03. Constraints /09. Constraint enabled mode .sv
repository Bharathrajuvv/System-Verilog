// Code your testbench here
// or browse Examples
class fru;
  randc bit [4:0] a;
  constraint level{if (a<9) a <9;
                   else a >=20;}
endclass

module tb;
  initial begin
  fru b=new();
    $display("=========================================");
    $display("Before  randomization = %0d",b.a);
  if(b.level.constraint_mode())
    $display("Constraint is enabled");
  else
    $display("Constraint is disabled");
  b.randomize();
  $display("After randomization = %0d",b.a);
    $display("==========================================");
  end
endmodule
  
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 09:29 2025
=========================================
Before  randomization = 0
Constraint is enabled
After randomization = 8
==========================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
  
