module atoi_demo;
  string s = "456abc";
  int value;

  initial begin
    value = s.atoi();
    $display("String: %s, Integer: %0d", s, value);
    $finish;
  end
endmodule


Output:
# KERNEL: String: 456abc, Integer: 456
# RUNTIME: Info: RUNTIME_0068 design.sv (8): $finish called.
