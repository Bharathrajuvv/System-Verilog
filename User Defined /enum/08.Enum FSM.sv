// Code your design here
module enum_fsm;
  typedef enum logic [1:0] {S0, S1, S2, S3} state_t;
  logic clk = 0;
  state_t curr = S0, next;

  always #5 clk = ~clk;

  always_comb begin
    unique case (curr)
      S0:    next = S1;
      S1:    next = S2;
      S2:    next = S3;
      S3:    next = S0;
      default: next = S0;
    endcase
  end

  always_ff @(posedge clk) begin
    curr <= next;
    $display("[%0t] state = %s", $time, curr.name());
    if ($time > 60) $finish;
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: [5] state = S0
# KERNEL: [15] state = S1
# KERNEL: [25] state = S2
# KERNEL: [35] state = S3
# KERNEL: [45] state = S0
# KERNEL: [55] state = S1
# KERNEL: [65] state = S2
# RUNTIME: Info: RUNTIME_0068 design.sv (22): $finish called.
