module sht_int;
  shortint a= 23555;
  shortint b= 13554;
  int c;
  
  initial begin
    $display("a=%0d",a);
    $display("b=%0d",b);
    
     c= b*a;
    $display("c=%0d",c);
  end
endmodule

Output:
# KERNEL: a=23555
# KERNEL: b=13554
# KERNEL: c=319264470
