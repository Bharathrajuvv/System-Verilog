module itoa_demo;
  string s;
  int value = -12345;

  initial begin
    s.itoa(value);  
    $display("Integer: %0d, String: %s", value, s);  
    $finish;
  end
endmodule


Output:
# KERNEL: Integer: -12345, String: -12345
# RUNTIME: Info: RUNTIME_0068 design.sv (8): $finish called.
