// Code your testbench here
// or browse Examples
class single_port_ram;
  rand bit [15:0] addr;  
  rand bit [7:0]  data;
  rand bit        wr;

  constraint level { addr % 2 == 0; addr inside {[16'h1000:16'h1FFF]}; }

  function void display();
    $display("===== Memory Transaction =====");
    $display(" Addr = 0x%0h", addr);
    $display(" Data = 0x%0h", data);
    $display(" Type = %0s", wr ? "WRITE" : "READ");
  endfunction
endclass

module tb;
  single_port_ram mem = new();
  initial begin
    for (int i=0; i<8; i++) begin
      void'(mem.randomize());
      mem.display();
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:52 2025
===== Memory Transaction =====
 Addr = 0x146a
 Data = 0xa3
 Type = WRITE
===== Memory Transaction =====
 Addr = 0x17e8
 Data = 0xd6
 Type = WRITE
===== Memory Transaction =====
 Addr = 0x12cc
 Data = 0x1
 Type = READ
===== Memory Transaction =====
 Addr = 0x1cd4
 Data = 0xc9
 Type = WRITE
===== Memory Transaction =====
 Addr = 0x1e02
 Data = 0x2d
 Type = WRITE
===== Memory Transaction =====
 Addr = 0x17c8
 Data = 0xa7
 Type = READ
===== Memory Transaction =====
 Addr = 0x1882
 Data = 0xf0
 Type = WRITE
===== Memory Transaction =====
 Addr = 0x143c
 Data = 0x32
 Type = WRITE
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
