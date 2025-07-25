module function_example;
  int a, b;
  int out;
  
  function void fn_pass(string name, int val);
    $display("Function: Values passed by name: %s, %0d", name, val);
  endfunction

  initial begin
    fn_pass(.val(100), .name("Alex"));
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:16 2025
Function: Values passed by name: Alex, 100
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
