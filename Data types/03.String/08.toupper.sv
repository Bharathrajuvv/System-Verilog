module toupper_demo;
  string s = "hello world", up;
  initial begin
    $display("s=%s",s);
    up = s.toupper();
    $display("toupper_demo: %s", up);
    $finish;
  end
endmodule


Output:
# KERNEL: s=hello world
# KERNEL: toupper_demo: HELLO WORLD
# RUNTIME: Info: RUNTIME_0068 design.sv (7): $finish called.
