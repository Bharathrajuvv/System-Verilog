module function_example;
  
  function void compare(input int a, b);
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is less than b");
    else 
      $display("a is equal to b");
  endfunction
  
  initial begin
    compare(10,10);
    compare(5, 9);
    compare(9, 5);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:12 2025
a is equal to b
a is less than b
a is greater than b
           V C S   S i m u l a t i o n   R e p o r t 
