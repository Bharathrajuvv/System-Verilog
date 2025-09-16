// Code your testbench here
// or browse Examples
class this_eg;
  bit [3:0] data;
  int bh;
  
  function new (bit [3:0] data,int bh);
    this.data=data;
    this.bh=bh;
  endfunction
endclass

module  run;
    initial begin
      this_eg eg=new(3,5);
      $display("Value of data=%0h id=%0h",eg.data,eg.bh);
    end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 10:06 2025
Value of data=3 id=5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
