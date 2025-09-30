// Code your testbench here
// or browse Examples
`include "package.sv"
import animal:: kangaroo;
module tb;
  kangaroo kan;
  initial begin
    kan = new();
    kan.display();
    animal::pkt();
  end
endmodule
