// Code your design here
module enum_compare;
  typedef enum {OFF, ON} switch_t;
  switch_t s1 = ON, s2 = OFF;

  initial begin
    if (s1 == s2)
      $display("Switches are equal");
    else
      $display("Switches are not equal");
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Switches are not equal
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
