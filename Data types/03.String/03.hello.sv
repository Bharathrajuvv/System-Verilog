module tb;
  string   dialog = "Hello!";

  initial begin
    $display("%s",dialog);
  
    foreach (dialog[i]) begin
      $display ("%s", dialog[i]);
    end
  end
endmodule

Output:
# KERNEL: Hello!
# KERNEL: H
# KERNEL: e
# KERNEL: l
# KERNEL: l
# KERNEL: o
# KERNEL: !
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
