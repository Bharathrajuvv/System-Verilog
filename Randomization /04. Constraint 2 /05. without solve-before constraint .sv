// Code your testbench here
// or browse Examples
class ABC;
  rand  bit			a;
  rand  bit [1:0] 	b;

  constraint c_ab { a -> b == 3'h3; }
endclass

module tb;
  initial begin
    ABC abc = new;
    for (int i = 0; i < 8; i++) begin
      abc.randomize();
      $display ("Solve-before without values a=%0d b=%0d", abc.a, abc.b);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:43 2025
Solve-before without values a=0 b=2
Solve-before without values a=0 b=2
Solve-before without values a=0 b=3
Solve-before without values a=0 b=1
Solve-before without values a=0 b=0
Solve-before without values a=0 b=2
Solve-before without values a=1 b=3
Solve-before without values a=0 b=3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
