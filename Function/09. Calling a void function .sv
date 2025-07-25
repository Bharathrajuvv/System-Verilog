module sv_function;
  int x;
  function int sum;
    input int a,b;
    return a+b;    
  endfunction
 
  initial begin
    $display("Calling function with void");
    void'(sum(10,5));
  end
 endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:21 2025
Calling function with void
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
