module getc_loop_demo;
  string s = "Cello";
  byte ch;

  initial begin
    $display("Characters in string: \"%s\"", s);
    for (int i = 0; i < s.len(); i++) begin
      ch = s.getc(i);
      $display("Character at index %0d = %s", i, string'(ch));
    end
    $finish;
  end
endmodule


Output:
# KERNEL: Characters in string: "Cello"
# KERNEL: Character at index 0 = C
# KERNEL: Character at index 1 = e
# KERNEL: Character at index 2 = l
# KERNEL: Character at index 3 = l
# KERNEL: Character at index 4 = o
# RUNTIME: Info: RUNTIME_0068 design.sv (11): $finish called.
