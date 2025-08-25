// Interface
interface up_down(input logic clk, rst);
    logic d;
    logic [3:0] count;
  modport up_down(input clk,rst,d, output count);
endinterface
