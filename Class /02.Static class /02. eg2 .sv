// Code your testbench here
// or browse Examples
class example;
  static int sum;
  function void sum_s;
    sum++;
  endfunction
endclass

  
module eg;
  example s1[7];
  initial begin
    foreach (s1[i])begin
      s1[i]=new();
      s1[i].sum_s;
      $display("Value of sum[%0d]=%0d",i,s1[i].sum);
    end
  end
endmodule
  
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  7 11:37 2025
Value of sum[0]=1
Value of sum[1]=2
Value of sum[2]=3
Value of sum[3]=4
Value of sum[4]=5
Value of sum[5]=6
Value of sum[6]=7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
