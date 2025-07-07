module tb;
  string   dialog = "Hello!";

  initial begin
    $display ("%s", dialog);
  end
endmodule


Output:
# KERNEL: Hello!
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
