module datatype_4state;
  integer       a;
  logic   [7:0] l1;
  logic signed [7:0] sl1;
  reg    [7:0]  r1;

  initial begin
    a   = 'h xxzz_ffff;
    l1  = -1;
    sl1 = -1;
    r1  = 8'b xxzz_0101;
  end

  initial begin
    #10;
    $display("\n--- 4‑State Values ---");
    $display("a   (integer)  = %h", a);
    $display("l1  (logic)    = %0d (%h)", l1, l1);
    $display("sl1 (logic s)  = %0d (%h)", sl1, sl1);
    $display("r1  (reg)      = %b", r1);
    #10 $finish(2);
  end
endmodule


Output:
 KERNEL: --- 4â€‘State Values ---
# KERNEL: a   (integer)  = xxzzffff
# KERNEL: l1  (logic)    = 255 (ff)
# KERNEL: sl1 (logic s)  = -1 (ff)
# KERNEL: r1  (reg)      = xxzz0101
# RUNTIME: Info: RUNTIME_0068 design.sv (21): $finish called.
