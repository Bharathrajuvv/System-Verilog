module priority_if_example;  
  initial begin
    int a, b;
    a = 20;
    b = 10;
    priority if(a>30)
      $display("a is greater than 30");
    else if(30<b)
      $display("30 is less than b");
  end
endmodule

Output:
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 12:28 2025

Warning-[RT-NCMPRIF] No condition matches in statement
testbench.sv, 6
  No condition matches in 'priority if' statement. 'else' statement is missing
  for the last 'else if' block, inside priority_if_example.unnamed$$_0, at 
  time 0ns.

           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
