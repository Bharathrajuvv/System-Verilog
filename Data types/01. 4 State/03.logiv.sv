module log_eg;
  logic a[];
  
  initial begin
    a=new[5];
    a={1,2,3,4,5};
    for(int i=0;i<6;i++)begin
      $display("a[%0d] = %b",i,a[i]);
    end
  end
endmodule

Output :
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: a[0] = 1
# KERNEL: a[1] = 0
# KERNEL: a[2] = 1
# KERNEL: a[3] = 0
# KERNEL: a[4] = 1
