module datatype1;

  string s2 = "hello world";
  string s3 = "hello\\world";
  string s4, s5;
  string s6 = "compare";
  string s7 = "compare";
  string s8;

  integer s2len, s3len;

  initial begin
    #10;
    $display("s2 = %s  s3 = %s", s2, s3);
    #100 $finish;
  end

  initial begin
    #15;

    s2len = s2.len();
    s3len = s3.len();
    $display("String Length s2 = %0d", s2len);
    $display("String Length s3 = %0d", s3len);

    if (s2 == s3)
      $display("s2 == s3");
    else
      $display("s2 != s3");

    if (s6 == s7)
      $display("s6 == s7");
    else
      $display("s6 != s7");

    s4 = s2.substr(1, 6);
    $display("s4 = %s", s4);

    s5 = "later ";
    s8 = {3{s5}};
    $display("s8 = %s", s8);
  end

endmodule


Output:
# KERNEL: s2 = hello world  s3 = hello\world
# KERNEL: String Length s2 = 11
# KERNEL: String Length s3 = 11
# KERNEL: s2 != s3
# KERNEL: s6 == s7
# KERNEL: s4 = ello w
# KERNEL: s8 = later later later 
# RUNTIME: Info: RUNTIME_0068 design.sv (15): $finish called.
