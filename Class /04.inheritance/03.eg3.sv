// Code your testbench here
// or browse Examples
class parent;
  int add;
  function add_cal(int a ,int b);
    add=a+b;
  endfunction
endclass

class child1 extends parent;
  int sub;
  function sub_cal(int a,int b);
    sub=a-b;
  endfunction
endclass

class child2 extends child1;
  int mul;
  function mul_cal(int a,int b);
    mul=a*b;
  endfunction
endclass

module class_eg;
  initial begin
    child2 c2;
    c2=new();
    c2.add_cal(4,4);
    c2.sub_cal(5,3);
    c2.mul_cal(6,4);
    $display("=====================================================");
    $display("Value of add=%0d sub=%0d mul=%0d",c2.add,c2.sub,c2.mul);
    $display("=====================================================");
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 25 07:43 2025
=====================================================
Value of add=8 sub=2 mul=24
=====================================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
    
    
    
