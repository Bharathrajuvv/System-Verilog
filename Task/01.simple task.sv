// Code your design here
module simple_task;
  int mul=4;
  int suh=8;
  int res;
  
  initial begin
    multiple(mul,suh,res);
    $display("%0d*%0d=%0d",mul,suh,res);
  end
  
endmodule

task multiple(input int var1,var2,output int res);
  #2;
  res=var1*var2;
endtask

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:14 2025
4*8=32
           V C S   S i m u l a t i o n   R e p o r t 
Time: 2 ns
