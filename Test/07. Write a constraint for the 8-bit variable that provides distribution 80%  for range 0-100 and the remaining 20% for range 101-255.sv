// Code your testbench here
// or browse Examples
class bharath;
  rand bit [7:0] num;
  
  constraint level { num dist{[0:100] := 80,
                              [101:255] := 20};}
endclass

module tb;
  bharath bh =new ();
  initial begin
    repeat(20)begin
      assert( bh.randomize());
      $display("num=%0d",bh.num);
    end
  end
endmodule

  
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 05:29 2025
num=2
num=17
num=14
num=74
num=50
num=5
num=72
num=145
num=95
num=71
num=16
num=157
num=236
num=82
num=199
num=246
num=48
num=136
num=67
num=49
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
