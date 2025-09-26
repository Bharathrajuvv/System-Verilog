// Code your testbench here
// or browse Examples
class global_eg;
  byte  data;
  const int ds=1;
  
  function void display();
    $display("data=%0d====ds=%0d",data,ds);
  endfunction
endclass

module tb;
  global_eg glo;
  initial begin
    glo=new();
   // glo.ds=2;
    glo.display();
  end
endmodule


Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:51 2025
data=0====ds=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
