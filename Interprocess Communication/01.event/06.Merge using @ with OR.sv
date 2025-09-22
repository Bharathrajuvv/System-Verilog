// Code your testbench here
// or browse Examples
module merge_events_1;
  reg clk = 0, rst = 1, start = 0;
  always #5 clk = ~clk;

  initial begin
    #12 rst = 0;   
    #20 start = 1; 
  end

  initial begin
    @(posedge clk or negedge rst or posedge start);
    $display("Merged event triggered at %0t", $time);
    $finish;
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:20 2025
Merged event triggered at 5
$finish called from file "testbench.sv", line 15.
$finish at simulation time                    5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5 ns
