// Code your testbench here
// or browse Examples
program tb_n(input [3:0]s);
  initial begin
    if(s==4)
      $display("output success is 4");
    else
      $display("output success is=%0d",s);
  end
endprogram

module tb_g;
  wire [3:0] s;
  or_gate duv(s);
  tb_n tb(s);
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 10:20 2025
output success is 4
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
