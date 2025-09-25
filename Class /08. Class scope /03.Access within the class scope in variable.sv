// Code your testbench here
// or browse Examples
class local_eg;
  byte data;
  logic bh;
  function new();
    data=34;
    bh=1;
    display();
  endfunction
  
  local function void display();
    $display("Constant value : data=%0d  bh=%0d",data,bh);
  endfunction
endclass

module tb;
  local_eg loc;
  initial begin
    loc=new();
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 25 10:58 2025
Constant value : data=34  bh=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
