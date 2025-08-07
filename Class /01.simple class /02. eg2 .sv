class sample;
  bit[3:0] a;
endclass

module class_eg;
  sample t1,t2;
  initial begin
    t1=new();
    t1.a=3;
    t2=t1;
    $display("t1.a=%0d t2.a=%0d",t1.a,t2.a);
    
    t2.a=2;
    $display("t1.a=%0d t2.a=%0d",t1.a,t2.a);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  7 11:35 2025
t1.a=3 t2.a=3
t1.a=2 t2.a=2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
