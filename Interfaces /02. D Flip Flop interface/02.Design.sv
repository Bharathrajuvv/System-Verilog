// Code your design here
module d_ff(dff inf);
  always@(posedge inf.clk)begin
    if(inf.rst)
      inf.q<=0;
    else
      inf.q<=inf.d;
  end
endmodule
