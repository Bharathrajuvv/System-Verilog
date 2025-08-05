module unique_if_example;
  reg [1:0] mode;

  initial begin
    mode = 2'b10;

    priority if (mode == 2'b00)
      $display("RED");
    else if (mode == 2'b01)
      $display("YELLOW");
    else if (mode == 2'b10)
      $display("GREEN");
    else
      $display("INVALID");
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 12:24 2025
GREEN
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
