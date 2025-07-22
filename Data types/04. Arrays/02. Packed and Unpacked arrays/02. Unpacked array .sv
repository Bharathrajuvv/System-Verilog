// Code your testbench here
// or browse Examples
module array_example;
  int array [2:0][3:0] = '{'{1, 2, 3, 4},
                           '{5, 6, 7, 8},
                           '{9, 10, 11, 12}};
  initial begin
    foreach (array[i,j]) begin
      $display("array[%0d][%0d] = %0d", i, j, array[i][j]);
    end
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 22 10:23 2025
array[2][3] = 1
array[2][2] = 2
array[2][1] = 3
array[2][0] = 4
array[1][3] = 5
array[1][2] = 6
array[1][1] = 7
array[1][0] = 8
array[0][3] = 9
array[0][2] = 10
array[0][1] = 11
array[0][0] = 12
           V C S   S i m u l a t i o n   R e p o r t 
