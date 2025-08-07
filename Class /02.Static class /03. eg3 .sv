// Code your testbench here
// or browse Examples
class packet;
  byte packet_id;
  static byte no_of_pkts_created;
  function new();
    no_of_pkts_created++;
    packet_id=no_of_pkts_created;
  endfunction
  
  function void display();
    $display("=============================");
    $display("\t packet_id = %0d",packet_id);
    $display("=============================");
  endfunction
endclass

  
module static_properties;
  packet pkt[3];
  initial begin
    foreach(pkt[i])begin
      pkt[i]=new();
      pkt[i].display();
    end
  end
endmodule

Output:
Chronologic VCS simulator copyright 1991-2023
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  7 11:38 2025
=============================
	 packet_id = 1
=============================
=============================
	 packet_id = 2
=============================
=============================
	 packet_id = 3
=============================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
