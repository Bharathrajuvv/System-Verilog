module enum_bs;
  typedef enum {red,green,blue}colour_a;
  colour_a b;
  
  initial begin
    b=green;
    $display("Selected colour = %s", b.name());
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Selected colour = green
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
