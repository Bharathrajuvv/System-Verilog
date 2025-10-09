// Code your testbench here
// or browse Examples
//6. Write a code for without using rand keyword how we can randomize the Variable.

module tb;
  bit [4:0] a,b;
  
  initial begin
     if (std::randomize(a,b) with { a> 10; b < 40;})
    $display("a=%0d and b=%0d",a,b);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 05:26 2025
a=30 and b=10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 n
