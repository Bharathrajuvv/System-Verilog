module return_fun;
  function int sum(int x,y);
    sum=x+y;
  endfunction
  
  function int mul(int x,y);
    return x*y;
  endfunction
  
  initial begin
    int s=sum(4,8);
    $display("============================");
    $display("Sum(4,8)=%0d",s);
    $display("Sum(1,9)=%0d",sum(1,9));
    $display("mul(7,3)=%0d",mul(7,3));
    $display("============================");
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 25 09:08 2025
============================
Sum(4,8)=12
Sum(1,9)=10
mul(7,3)=21
============================
           V C S   S i m u l a t i o n   R e p o r t 
