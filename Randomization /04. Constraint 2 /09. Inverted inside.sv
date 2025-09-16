// Code your testbench here
// or browse Examples
class stone;
  rand logic [5:0] bh;
  constraint c {~(bh inside {0, [20:30],50});}
endclass

module tb;
  stone sto;
  int cont;
  initial begin
    forever begin
      sto=new();
      void'(sto.randomize());
      $display("Stone values  =%0d",sto.bh);
      cont++;
      if(cont==20) break;
    end
  end
endmodule
    
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 09:54 2025
Stone values  =43
Stone values  =63
Stone values  =41
Stone values  =63
Stone values  =57
Stone values  =5
Stone values  =56
Stone values  =47
Stone values  =55
Stone values  =61
Stone values  =62
Stone values  =17
Stone values  =39
Stone values  =9
Stone values  =35
Stone values  =32
Stone values  =53
Stone values  =40
Stone values  =5
Stone values  =52
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns

