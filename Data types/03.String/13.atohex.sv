module atohex_demo;
  string  s = "fff_000_bb";
  integer v;
  initial begin
    v = s.atohex();
    $display("atohex_demo: %0h", v);
    $finish;
  end
endmodule


Output:
# KERNEL: atohex_demo: fff000bb
# RUNTIME: Info: RUNTIME_0068 design.sv (7): $finish called
