// Code your design here
module int_to_enum;
  typedef enum logic [1:0] {LOW, MED, HIGH} priority_t;
  priority_t p;
  int i = 2;

  initial begin
    p = priority_t'(i);  
    $display("Priority = %s", p.name());
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Priority = HIGH
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
