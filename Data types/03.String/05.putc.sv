module putc_demo;
  string s = "hello";
  initial begin
    $display("s=%s",s);
    s.putc(0, "C");
    $display("putc_demo: %s", s);
    $finish;
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: s=hello
# KERNEL: putc_demo: Cello
# RUNTIME: Info: RUNTIME_0068 design.sv (7): $finish called.
