module int_da;
  int x;
  int y =23456;
  int z =-12345;
  
  initial begin
    $display("Initial values :y=%0d,z=%0d",y,z);
    
    x=y-z;
    $display("Subraction: x = y-z = %0d",x);
    if(y<z)
      $display("Comparison: y(%0d) is less than z(%0d)",y,z);
    else
      $display("Comparsion: z(%0d) is higher than y(%0d)",z,y);
  end
endmodule

Output:
# KERNEL: Initial values :y=23456,z=-12345
# KERNEL: Subraction: x = y-z = 35801
# KERNEL: Comparsion: z(-12345) is higher than y(23456)
