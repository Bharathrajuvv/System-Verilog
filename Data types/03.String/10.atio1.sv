module atoi_demo;
  string s = "12345";
  int value;

  initial begin
    value = s.atoi();
    $display("String: %s, Integer: %0d", s, value);  // Output: 12345
    $finish;
  end
endmodule

Output:
# KERNEL: String: 12345, Integer: 12345
# RUNTIME: Info: RUNTIME_0068 design.sv (9): $finish called.
