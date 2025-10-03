// Code your testbench here
// or browse Examples
// Task to compare two integers
task compare(input int a, b, output bit [1:0] res);
  fork
  if (a > b) begin
    res = 2'h1;
    $display("Comparison: a > b completed");
  end
  else if (a < b) begin
    res = 2'h2;
    $display("Comparison: a < b completed");
  end
  else begin
    res = 2'h3;
    $display("Comparison: a == b completed");
  end
  join
endtask

module task_eg;
  initial begin
    bit [1:0] res;
    int a, b;
    
    repeat (8) begin
      a = $urandom_range(4,32);
      b = $urandom_range(6,24);
      $display("Inputs: a=%0d b=%0d", a, b);
      compare(a, b, res);
      
      case (res)
        2'h1: $display("Result: a is greater than b");
        2'h2: $display("Result: a is less than b");
        2'h3: $display("Result: a is equal to b");
      endcase
      $display("----");
    end
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:16 2025
Inputs: a=4 b=23
Comparison: a < b completed
Result: a is less than b
----
Inputs: a=23 b=13
Comparison: a > b completed
Result: a is greater than b
----
Inputs: a=22 b=13
Comparison: a > b completed
Result: a is greater than b
----
Inputs: a=26 b=17
Comparison: a > b completed
Result: a is greater than b
----
Inputs: a=32 b=6
Comparison: a > b completed
Result: a is greater than b
----
Inputs: a=27 b=13
Comparison: a > b completed
Result: a is greater than b
----
Inputs: a=26 b=18
Comparison: a > b completed
Result: a is greater than b
----
Inputs: a=25 b=20
Comparison: a > b completed
Result: a is greater than b
----
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
