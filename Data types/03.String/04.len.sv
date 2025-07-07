module len_demo;
  string s = "hello world";
  integer n;
  initial begin
    n = s.len();
    $display("s=%s",s);
    $display("len_demo: %0d", n);
    $finish;
  end
endmodule

Output:
# KERNEL: len_demo: 11
# KERNEL: s=hello world
# RUNTIME: Info: RUNTIME_0068 design.sv (8): $finish called.
