// Code your testbench here
// or browse Examples
class parent_trans;
  bit [31:0] data;
  int id;
  
  function void display();
     $display("Base: Value of data = %0h and id = %0h", data, id);
  endfunction
endclass

class child_trans extends parent_trans;
  function void display();
    $display("Child: Value of data = %0h and id = %0h", data, id);
  endfunction  
endclass

module class_example;
  initial begin
    parent_trans p_tr;
    child_trans c_tr;
    c_tr = new();
    
    p_tr = c_tr;
    p_tr.data = 5;
    p_tr.id = 1;
    p_tr.display();
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 10:01 2025
Base: Value of data = 5 and id = 1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
