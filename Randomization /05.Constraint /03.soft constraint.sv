// Code your testbench here
// or browse Examples
class fan;
  rand byte data;
  rand int bh;
  constraint level1 { (data inside {[10:50]}) ;}
  static constraint level2 { soft bh inside {20,30,40};}
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
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:51 2025
data=16 bh=12
data=40 bh=12
data=12 bh=12
data=21 bh=12
data=38 bh=12
data=24 bh=12
data=43 bh=12
data=48 bh=12
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
