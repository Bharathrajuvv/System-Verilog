module datatype_2state;
  int      b;
  shortint c;
  longint  d;
  byte     bl1;

  initial begin
    b   = -1;
    c   = 'h fxfX;
    d   = 'h ffff_xxxx_ffff_zzzz;
    bl1 = -1;
  end

  initial begin
    #10;
    $display("\n--- 2‑State Values ---");
    $display("b   (int)      = %0d (%h)", b, b);
    $display("c   (shortint) = %0d (%h)", c, c);
    $display("d   (longint)  = %0d (%h)", d, d);
    $display("bl1 (byte)     = %0d (%h)", bl1, bl1);
    #10 $finish(2);
  end
endmodule


Output:
# KERNEL: --- 2â€‘State Values ---
# KERNEL: b   (int)      = -1 (ffffffff)
# KERNEL: c   (shortint) = -3856 (f0f0)
# KERNEL: d   (longint)  = -281470681808896 (ffff0000ffff0000)
# KERNEL: bl1 (byte)     = -1 (ff)
