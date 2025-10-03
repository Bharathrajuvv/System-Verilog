// Code your testbench here
// or browse Examples
module task_eg;
  int a,b;
  int rez;
  initial begin
    a=3;
    b=5;
    tr_mul(a,b,rez);
    $display("task: %0d for a=%0d b=%0d",rez,a,b,);
  end
endmodule

task tr_mul(int a,b, output int rez);
  a=a*b;
  rez=a;
endtask


Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:33 2025
task: 15 for a=3 b=5 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
