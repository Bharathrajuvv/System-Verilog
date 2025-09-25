// Code your testbench here
// or browse Examples
class param;
  bit [31:0] data;
  bit type_b;
endclass

class trans #(parameter WIDTH =24, type t_type = param);
  bit [WIDTH-1:0] data_p;
  t_type bh;
  
  function new ();
    data_p=24;
    bh=new();
  endfunction
  
  function void display();
    $display("Values: data_p=%0d  param=%0d",data_p,bh);
  endfunction
endclass

module tb;
  trans tr;
  trans #(4)tr4;
  initial begin
    tr=new();
    tr4=new();
    tr4.data_p=2;
    tr.display();
    tr4.display();
  end
endmodule


Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 25 10:47 2025
Values: data_p=24  param=23113327960272
Values: data_p=2  param=23113327960416
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
