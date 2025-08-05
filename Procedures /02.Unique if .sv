module unique_eg;
  int a,b,c;
  initial begin
    a=22;b=44;c=66;
    unique if(a<b)
      $display("a is lesser than b");
    else if(a<c)
      $display("a is lesser than c");
    else
      $display("a is greter than b,c");
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 12:20 2025
a is lesser than b

Warning-[RT-MTOCMUIF] More than one condition match in statement
testbench.sv, 5
  More than one condition matches are found in 'unique if' statement inside 
  unique_eg, at time 0ns.
  
  Line number 5 and 7 are overlapping.

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.510 seconds;       Data structure size:   0.0Mb
Tue Aug  5 12:20:16 2025
