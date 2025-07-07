module tb;
  string   dialog = "Hello!";

  initial begin
  
    foreach (dialog[i]) begin
      $display ("%s", dialog[i]);
    end
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: H
# KERNEL: e
# KERNEL: l
# KERNEL: l
# KERNEL: o
# KERNEL: !
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
