module sv_function;
  int x;
  function int sum;
    input int a,b;
  return a+b;    
  endfunction
  initial begin
    x = 10 + sum(10,5);
    $display("\tValue of x = %0d",x);
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:23 2025
	Value of x = 25
           V C S   S i m u l a t i o n   R e p o r t 
