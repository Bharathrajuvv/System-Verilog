module array_reduction;
  int a[6]='{0,2,4,6,8,10};
  int b[$];
  initial begin
    $display("==============================");
    $display("and =%0h",a.and());
    $display("or =%0h",a.or());
    $display("xor =%0h",a.xor());
    $display("sum =%0d",a.sum());
    $display("product =%0d",a.product());
    $display("==============================");
  end
endmodule

Output:
==============================
and =0
or =e
xor =2
sum =30
product =0
==============================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
    

    
    
