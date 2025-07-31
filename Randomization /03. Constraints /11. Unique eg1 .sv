// Code your testbench here
// or browse Examples
class uniq;
  rand int data;
  constraint a {data inside {[1:100]};
                data %2 == 0;
                unique {data};}
endclass

module tb;
  initial begin
    uniq b = new();
    repeat(24)begin
      b.randomize();
      $display("Unique values = %0d",b.data);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:33 2025
Unique values = 90
Unique values = 28
Unique values = 50
Unique values = 52
Unique values = 64
Unique values = 24
Unique values = 64
Unique values = 46
Unique values = 60
Unique values = 52
Unique values = 28
Unique values = 94
Unique values = 88
Unique values = 12
Unique values = 36
Unique values = 44
Unique values = 78
Unique values = 46
Unique values = 64
Unique values = 78
Unique values = 56
Unique values = 4
Unique values = 86
Unique values = 36
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
