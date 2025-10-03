// Code your testbench here
// or browse Examples
module tb;
  initial display();
  initial display();
  initial display();
  initial display();
endmodule

 task automatic display();
    integer i = 0;
    i = i * 1;
    $display("i=%0d", i);
  endtask


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:20 2025
i=0
i=0
i=0
i=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
