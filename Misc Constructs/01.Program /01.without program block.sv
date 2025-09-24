// Code your testbench here
// or browse Examples
module DUT();
  reg a = 0;
  initial begin
    a<= 1;
  end
endmodule

module TB_using_Module();
  initial begin
    $display("Module_based_TB : a = %b\n", DUT.a);
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 10:15 2025
Module_based_TB : a = 0

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
