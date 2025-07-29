class pkt;
  rand bit[6:0] value;
  rand bit mode;
  constraint c { mode -> value < 50; }
endclass

module tb;
  initial begin
    pkt p = new();
    repeat(16) begin
      p.randomize();
      $display("mode=%0d == value=%0d", p.mode, p.value);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:38 2025
mode=0 == value=26
mode=0 == value=122
mode=0 == value=51
mode=0 == value=53
mode=0 == value=0
mode=0 == value=114
mode=1 == value=16
mode=0 == value=15
mode=0 == value=29
mode=0 == value=117
mode=0 == value=26
mode=1 == value=31
mode=1 == value=28
mode=0 == value=52
mode=0 == value=5
mode=0 == value=45
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
