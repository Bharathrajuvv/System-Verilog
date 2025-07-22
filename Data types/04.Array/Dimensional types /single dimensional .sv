// Code your testbench here
// or browse Examples
module single_dime;
  int array[5] = '{10,20,30,40,50};
  initial begin
    foreach (array[i])begin
      $display("array[%0d]=%0d",i,array[i]);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 22 10:12 2025
array[0]=10
array[1]=20
array[2]=30
array[3]=40
array[4]=50
           V C S   S i m u l a t i o n   R e p o r t 
