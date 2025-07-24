module dyn_array_eg;
  int array[];
  initial begin
    array = new[5];
    array = '{2,4,6,8,0};
    $display("===================");
    foreach (array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("Size of array = %0d",array.size());
    $display("===================");
  end
endmodule

Output:
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 09:19 2025
===================
array[0]=2
array[1]=4
array[2]=6
array[3]=8
array[4]=0
Size of array = 5
===================
           V C S   S i m u l a t i o n   R e p o r t 
