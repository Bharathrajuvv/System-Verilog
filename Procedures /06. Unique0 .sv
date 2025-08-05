module unique0_if_example;  
  initial begin
    int a, b;
    a = 10;
    b = 20;
    unique0 if(a>30)
      $display("a is greater than 30");
    else if(30<b)
      $display("30 is less than b");
  end
endmodule

Output:
CPU time: .478 seconds to compile + .417 seconds to elab + .498 seconds to link
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 12:26 2025
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
CPU Time:      0.500 seconds;       Data structure size:   0.0Mb
Tue Aug  5 12:26:05 2025
Done
