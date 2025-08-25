interface dff(input clk,rst);
  logic d;
  logic q;
  modport dff(input d,clk,rst, output q);
endinterface
