// Code your testbench here
// or browse Examples
class packet;
  bit parity;
  rand bit[3:0] addr;
  randc bit[4:0] data=4'b0;
  constraint word_align{addr[1:0]==1'b0;}
  
  function void pre_randomize();
    addr=16'hffff;
  endfunction
  
  function void post_randomize();
    parity=^data;
  endfunction
endclass

module tb;
  initial begin
    packet pkt=new();
    if(pkt.randomize()==1)
      $display("New statement after randomize func: addr=%0d data=%0d parity=%0b",pkt.addr,pkt.data,pkt.parity);
    else
      $display("Randomize failed");
    end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:10 2025
New statement after randomize func: addr=4 data=3 parity=0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
