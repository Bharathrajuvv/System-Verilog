// Code your testbench here
// or browse Examples
class first;
  bit [2:0] dta;
  function void display;
    $display("First: Value of dta=%0h",dta);
  endfunction 
endclass

class second extends first;
  bit [4:0] data;
  function void display;
    super.dta=4;
    super.display();
    $display("Second: Value of data=%0h",data);
  endfunction
endclass

module tb;
  initial begin
    second sco=new();
    
    sco.data=8;
    sco.display();
  end
endmodule
    
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 10:03 2025
First: Value of dta=4
Second: Value of data=8
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
