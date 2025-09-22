// Code your testbench here
// or browse Examples
class fan;
  rand byte data;
  rand int bh;
endclass

module tb;
  fan f=new();
  initial begin
    for(int i=0; i<8; i++)begin
      void'(f.randomize() with { data inside {[30:40], 50}; });
      void'(f.randomize() with { bh == 12;});
      $display("data=%0d bh=%0d",f.data,f.bh);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:25 2025
data=-42 bh=12
data=-55 bh=12
data=-89 bh=12
data=50 bh=12
data=-102 bh=12
data=-65 bh=12
data=62 bh=12
data=91 bh=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
