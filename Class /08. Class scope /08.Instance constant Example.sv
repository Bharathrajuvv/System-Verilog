// Code your testbench here
// or browse Examples
class global_eg;
  const bit [23:0] data;
  logic gu;
  
  function new();
    data=28;
    gu=1;
  endfunction
  
  function void display();
    $display("data=%0d==gu=%0d",data,gu);
  endfunction
endclass

module tb;
  global_eg glo;
  initial begin
    glo=new();
    glo.display();
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:53 2025
data=28==gu=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
