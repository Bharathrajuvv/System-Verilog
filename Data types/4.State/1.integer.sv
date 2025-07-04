// Integer and reg
module ine_reg;
  integer a;
  reg [31:0] b;
  initial begin
    a='h1234ABCD;
    b='h5678 ;
    $display("a=%h,b=%h",a,b);
  end
endmodule

Output:
# KERNEL: a=1234abcd,b=00005678
