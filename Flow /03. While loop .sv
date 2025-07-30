module while_eg;
  int a;
  initial begin
    $display("===========================");
    while (a<8)begin
      $display("Value of a=%0d",a);
      a++;
    end
    $display("===========================");
  end
endmodule

Output:
===========================
Value of a=0
Value of a=1
Value of a=2
Value of a=3
Value of a=4
Value of a=5
Value of a=6
Value of a=7
===========================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
