// Code your testbench here
// or browse Examples
module multi_dime;
  int a [2] [4] = '{'{1,56,3,4},'{5,6,7,8}};
  initial begin
    $display("2D array contents:");
    foreach (a[i,j])begin
      $display("a[%0d] [%0d] = %0d",i,j,a[i][j]);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 22 10:20 2025
2D array contents:
a[0] [0] = 1
a[0] [1] = 56
a[0] [2] = 3
a[0] [3] = 4
a[1] [0] = 5
a[1] [1] = 6
a[1] [2] = 7
a[1] [3] = 8
           V C S   S i m u l a t i o n   R e p o r t 
  
  
             
