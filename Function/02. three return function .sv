module function_example;
  
  function bit [1:0] compare(input int a, b);
    if(a>b) begin 
      return 2'h1;
      $display("a > b comparison completed");
    end
    
    if(a<b) begin
      return 2'h2;
      $display("a < b comparison completed");
    end
    
    if(a == b) begin 
      return 2'h3; 
      $display("a == b comparison completed");
    end
  endfunction
  
  initial begin
    bit [1:0] done;
    int a, b;
    
    repeat(5) begin
      a = $urandom_range(5, 20);
      b = $urandom_range(5, 20);
      $display("input a = %0d, input b = %0d", a, b);
      done = compare(a,b);
      if(done == 2'h1) $display("a is greater than b");
      if(done == 2'h2) $display("a is less than b");
      if(done == 2'h3) $display("a is equal to b");
      $display("------------------------");
    end
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:10 2025
input a = 11, input b = 17
a is less than b
------------------------
input a = 18, input b = 7
a is greater than b
------------------------
input a = 16, input b = 20
a is less than b
------------------------
input a = 5, input b = 12
a is less than b
------------------------
input a = 11, input b = 16
a is less than b
------------------------
           V C S   S i m u l a t i o n   R e p o r t 
