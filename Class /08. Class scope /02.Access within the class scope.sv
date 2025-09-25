// Code your testbench here
// or browse Examples
class local_eg;
  longint data;
  int as;
  
  function new();
    data=24;
    as=12;
  endfunction
  
  function void display();
    $display("Values: data=%0d     as=%0d",data,as);
  endfunction
endclass

module tb;
  local_eg loc;
  initial begin
    loc=new();
    loc.display();
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 25 10:52 2025
Values: data=24     as=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
