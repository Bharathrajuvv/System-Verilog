// Code your testbench here
// or browse Examples

`include "package.sv"
`include "package2.sv"
`include "package3.sv"

import india2::*;
module tb;
  initial begin
    india::tamil();
    india1::tamil();
    india2::tamil();
  end
endmodule
