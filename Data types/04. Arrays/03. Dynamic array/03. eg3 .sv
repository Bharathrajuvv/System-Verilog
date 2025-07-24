module dyn_eg;
  int a[];
  initial begin
    $display("====================================");
    a= new[9];
    a='{1,2,3,4,5,6,7,8,9};
     foreach(a[i])
      $display("array[%0d]=%0d",i,a[i]);
    $display("size of after resizing =%0d",a.size());
    a = new[6];
    $display("size of after override=%0d",a.size());
    foreach(a[i])
      $display("array[%0d]=%0d",i,a[i]);
    a.delete();
    $display("size=%0d",a.size());
    $display("====================================");
  end
endmodule

Output:
# KERNEL: ====================================
# KERNEL: array[0]=1
# KERNEL: array[1]=2
# KERNEL: array[2]=3
# KERNEL: array[3]=4
# KERNEL: array[4]=5
# KERNEL: array[5]=6
# KERNEL: array[6]=7
# KERNEL: array[7]=8
# KERNEL: array[8]=9
# KERNEL: size of after resizing =9
# KERNEL: size of after override=6
# KERNEL: array[0]=0
# KERNEL: array[1]=0
# KERNEL: array[2]=0
# KERNEL: array[3]=0
# KERNEL: array[4]=0
# KERNEL: array[5]=0
# KERNEL: size=0
# KERNEL: ====================================
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
