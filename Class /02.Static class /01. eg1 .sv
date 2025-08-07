// Code your testbench here
// or browse Examples
class example;
  static int sum;
  int count;
  function   new();
    sum++;
    count++;
  endfunction
endclass

module eg;
  example s1[7];
  initial begin
    foreach (s1[i])begin
      s1[i]=new();
      $display("Value of sum[%0d]=%0d count[%0d]=%0d",i,s1[i].sum,i,s1[i].count);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  7 11:36 2025
Value of sum[0]=1 count[0]=1
Value of sum[1]=2 count[1]=1
Value of sum[2]=3 count[2]=1
Value of sum[3]=4 count[3]=1
Value of sum[4]=5 count[4]=1
Value of sum[5]=6 count[5]=1
Value of sum[6]=7 count[6]=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
    
