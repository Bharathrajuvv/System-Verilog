module enum_to_int;
  typedef enum logic [1:0] {LOW = 2'b00, MID = 2'b01, HIGH = 2'b10} level_t;
  level_t lvl;
  int val;

  initial begin
    lvl = HIGH;
    val = lvl;
    $display("Enum value = %s, Integer = %0d", lvl.name(), val);
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Enum value = HIGH, Integer = 2
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
