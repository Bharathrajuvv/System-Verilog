typedef struct packed {bit[3:0]mode;
                       bit[2:0]cfg;
                       bit en;}str_ctrl;
module str;
  str_ctrl ctrl_reg;
  initial begin
    ctrl_reg='{4'ha,3'h5,1};
    $display("========================================");
    $display("ctrl_reg=%p",ctrl_reg);
    ctrl_reg=4'h3;
    $display("ctrl_reg=%p",ctrl_reg);
    ctrl_reg=8'hfa;
    $display("ctrl_reg=%p",ctrl_reg);
    $display("========================================");

  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 09:08 2025
========================================
ctrl_reg='{mode:'ha, cfg:'h5, en:'h1}
ctrl_reg='{mode:'h0, cfg:'h1, en:'h1}
ctrl_reg='{mode:'hf, cfg:'h5, en:'h0}
========================================
           V C S   S i m u l a t i o n   R e p o r t 
    
