module getc_demo;
  string s = "Cello";
  byte    ch;
  initial begin
    $display("s=%s",s);
    ch = s.getc(0);
    $display("getc_demo: %s", string'(ch));
    $finish;
  end
endmodule


Output;
# KERNEL: s=Cello
# KERNEL: getc_demo: C
# RUNTIME: Info: RUNTIME_0068 design.sv (8): $finish called.
