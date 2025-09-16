// Code your testbench here
// or browse Examples
class collector;
  rand longint x;
  int my[]='{2,27,15,32,31,54,41,53,62,16,29,10};
  constraint c{x inside {my};}
endclass

module tb;
  collector col;
  initial begin
    col = new();
    foreach (col.my[i]) begin
      void'(col.randomize());
      $display("Iteration %0d: x = %0d (my[%0d] = %0d)", 
                i, col.x, i, col.my[i]);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 09:52 2025
Iteration 0: x = 10 (my[0] = 2)
Iteration 1: x = 53 (my[1] = 27)
Iteration 2: x = 15 (my[2] = 15)
Iteration 3: x = 54 (my[3] = 32)
Iteration 4: x = 53 (my[4] = 31)
Iteration 5: x = 16 (my[5] = 54)
Iteration 6: x = 29 (my[6] = 41)
Iteration 7: x = 41 (my[7] = 53)
Iteration 8: x = 54 (my[8] = 62)
Iteration 9: x = 41 (my[9] = 16)
Iteration 10: x = 29 (my[10] = 29)
Iteration 11: x = 31 (my[11] = 10)
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
