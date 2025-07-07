module tolower_demo;
  string s = "GOODBYE", low;
  initial begin
    $display("s=%s",s);
    low = s.tolower();
    $display("tolower_demo: %s", low);
    $finish;
  end
endmodule


Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: s=GOODBYE
# KERNEL: tolower_demo: goodbye
# RUNTIME: Info: RUNTIME_0068 design.sv (7): $finish called.
