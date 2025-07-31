// Code your testbench here
// or browse Examples
class ABC;
  rand  bit			a;
  rand  bit [1:0] 	b;

  constraint c_ab { a -> b == 3'h3;
                  	solve a before b;
                  }
endclass

module tb;
  initial begin
    ABC abc = new;
    for (int i = 0; i < 8; i++) begin
      abc.randomize();
      $display ("Slove-before with values a=%0d b=%0d", abc.a, abc.b);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:44 2025
Slove-before with values a=1 b=3
Slove-before with values a=0 b=2
Slove-before with values a=0 b=3
Slove-before with values a=0 b=1
Slove-before with values a=1 b=3
Slove-before with values a=0 b=2
Slove-before with values a=1 b=3
Slove-before with values a=0 b=3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
