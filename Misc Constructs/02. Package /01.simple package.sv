// Testbench code
// Code your testbench here
// or browse Examples
`include "package.sv"
import pkt::*;
module excute;
  tb tr;
  initial begin
    tr = new();
    tr.display();
    tbs();
  end
endmodule


// Package code
package pkt;
class tb;
  string bh = " Bharath";
  int value = 12;
  
  function void display();
    $display("bh=%0s && value=%0d",bh,value);
  endfunction
endclass

function tbs ;
  $display("Bharath Raju");
endfunction
endpackage


Output:
xcelium> source /xcelium23.09/tools/xcelium/files/xmsimrc
xcelium> run
bh= Bharath && value=12
Bharath Raju
xmsim: *W,RNQUIE: Simulation is complete.
xcelium> exit
