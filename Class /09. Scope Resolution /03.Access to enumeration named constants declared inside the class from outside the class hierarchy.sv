// Code your testbench here
// or browse Examples
class marvel;
  typedef enum { Ironman,
                 Captian_america,
                 Thor,
                 Hawkeye,
                 Black_widow,
                Hulk} og_avengers;
  function void display(og_avengers og);
    $display(" OG_Avengers === %0p",og.name());
  endfunction
endclass

module tb;
  marvel mar;
  initial begin
    mar=new();
    mar.display(marvel::Thor);
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:27 2025
 OG_Avengers === "Thor"
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
