// Code your testbench here
// or browse Examples
task mul(input int var1,var2, output int res);
  #1 res=var1*var2;
endtask

module task1();
  int mult=8,multi=6,resu;
  initial begin
    mul(mult,multi,resu);
    $display("\t @ %0t ns , %0d X %0d = %0d", $time,mult,multi,resu);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:30 2025
	 @ 1 ns , 8 X 6 = 48
           V C S   S i m u l a t i o n   R e p o r t 
Time: 1 ns
