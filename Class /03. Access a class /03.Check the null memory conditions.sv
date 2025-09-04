// Code your testbench here
// or browse Examples
class null_eg;
  bit [7:0] data;
  int bh;
endclass

program tb;
  null_eg nu1,nu2;
  initial begin
    nu1=new();
    if(nu1!=null)begin
      nu1.data=6;
      nu1.bh=2;
      $display("First nu1.data=%0h,nu1.bh=%0h",nu1.data,nu1.bh);
    end
    else $display("First not occurs");
    
    if(nu2!=null)begin
      nu2.data=8;
      nu2.bh=4;
      $display("Second nu2.data=%0h,nu2.bh=%0h",nu2.data,nu2.bh);
    end
    else $display("Second not occurs");
  end
endprogram

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep  4 03:04 2025
First nu1.data=6,nu1.bh=2
Second not occurs
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
