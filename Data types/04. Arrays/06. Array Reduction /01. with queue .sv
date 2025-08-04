module array_reduction;
  int a[6]='{2,4,6,8,10,12};
  int b[$]={1,3,5,7,9}; // B means queue 
  initial begin
    $display("==============================");
    $display("and: a=%0h b=%0h",a.and(),b.and());
    $display("or: a=%0h b=%0h",a.or(),b.or());
    $display("xor: a=%0h b=%0h",a.xor(),b.xor());
    $display("sum: a=%0d b=%0d",a.sum(),b.sum());
    $display("product: a=%0d b=%0d",a.product(),b.product());
    $display("==============================");
  end
endmodule

Output:
and: a=0 b=1
or: a=e b=f
xor: a=e b=9
sum: a=42 b=25
product: a=46080 b=945
==============================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
    

    
    
