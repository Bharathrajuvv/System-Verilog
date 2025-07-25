module function_example;
  int a, b;
  int out;
  
  function int fn_multiply(int a, b);
    a = a*b;
    return a;
  endfunction
  
  initial begin
    a = 5;
    b = 6;
    out = fn_multiply(a,b);
    $display("Function: out = %0d for a = %0d and b = %0d", out, a, b);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:14 2025
Function: out = 30 for a = 5 and b = 6
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
