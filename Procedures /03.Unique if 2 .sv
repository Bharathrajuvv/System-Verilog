module unique_eg;
  int a,b,c;
  initial begin
    a=22;b=44;c=66;
    unique if(a<b)
      $display("a is lesser than b");
    else if(a>c)
      $display("a is greter than c");
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  5 12:21 2025
a is lesser than b
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
