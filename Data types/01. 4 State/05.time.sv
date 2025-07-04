module time_eg;
  time start;
  bit clk=0;
  
  always #5 clk = ~clk;
  initial begin
    start = $time;
    for(int i=1; i<=5; i++) begin
      @(posedge clk);
      $display("Cycle %0d @ %0t ns", i, $time);
    end
    $finish;
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Cycle 1 @ 5 ns
# KERNEL: Cycle 2 @ 15 ns
# KERNEL: Cycle 3 @ 25 ns
# KERNEL: Cycle 4 @ 35 ns
# KERNEL: Cycle 5 @ 45 ns
# RUNTIME: Info: RUNTIME_0068 design.sv (12): $finish called.
# KERNEL: Time: 45 ns,  Iteration: 0,  Instance: /time_eg,  Process: @INITIAL#6_1@.
