// Code your testbench here
// or browse Examples
class x;
  int ands,ors;
  function cal(int a,b);
    ands = a&b;
    ors = a|b;
  endfunction
endclass

class y extends x;
  int xors;
  function cal(int a,b);
    super.cal(a,b);
    xors=a^b;
  endfunction
endclass

module class_eg;
  initial begin
    y c1;
    c1=new();
    c1.cal(13,14);
    $display("Value of ands=%0b ors=%0b xors=%0b",c1.ands,c1.ors,c1.xors);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 25 07:45 2025
Value of ands=1100 ors=1111 xors=11
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
