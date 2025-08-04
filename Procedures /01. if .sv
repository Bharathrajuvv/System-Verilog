module tb;
  initial begin
    int a,b;
    a=20;b=10;
    $display("=============================");
    if(a>b)
      $display("a is greater than b");
    else if(a<b)
      $display("a is lesser than b");
    else
      $display("a is equal to b");
    $display("=============================");
  end
endmodule

Output:
=============================
a is greater than b
=============================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
