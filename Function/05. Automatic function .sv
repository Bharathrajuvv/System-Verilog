module function_example;
  int a, b;
  int out;
  
  function automatic int multiply(ref int a, b);
    a = a*b;
    return a;
  endfunction
  
  initial begin
    a = 5;
    b = 6;
    out = multiply(a,b);
    $display("Multiplication: out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:15 2025
Multiplication: out = 30, a = 30 and b = 6
           V C S   S i m u l a t i o n   R e p o r t 
