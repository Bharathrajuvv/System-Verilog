// Code your testbench here
// or browse Examples
`include "package.sv"
import stru:: movie;
module tb; 
  movie mov;
  initial begin
    mov=new();
    mov.display();
    //release_s();
  end
endmodule
