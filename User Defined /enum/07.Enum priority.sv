// Code your design here
module enum_explicit;
  typedef enum logic [2:0] {
    NONE  = 3'd0,
    LOW   = 3'd1,
    MED   = 3'd3,
    HIGH  = 3'd7
  } priority_t;

  priority_t p = MED;

  initial begin
    $display("priority = %s  (bin=%b hex=%h)", p.name(), p, p);
    $finish;
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: priority = MED  (bin=011 hex=3)
# RUNTIME: Info: RUNTIME_0068 design.sv (14): $finish called.
