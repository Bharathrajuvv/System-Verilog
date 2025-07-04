module log_wr;
  logic [31:0] x;
  logic [31:0]y;
  logic [31:0] z;
  logic [31:0] a;
  assign z = x&y;
  assign a= z|(x|y);
  initial begin
    #1;
    x = 'h0110011;
    y = 'h1001011;
    #0;
    $display("x = %b", x);
    $display("y = %b", y);
    $display("z = %b", z);
    $display("a = %b", a);
  end
endmodule

Output:
# KERNEL: x = 00000000000100010000000000010001
# KERNEL: y = 00000001000000000001000000010001
# KERNEL: z = 00000000000000000000000000010001
# KERNEL: a = 00000001000100010001000000010001
