// Code your testbench here
// or browse Examples
class marvel;
  typedef enum { Ironman,
                 Captian_america,
                 Thor,
                 Hawkeye,
                 Black_widow,
                Hulk} og_avengers;
 
endclass

class marvel_first extends marvel;
  function void display();
    $display(" OG_Avengers === %0p",marvel::Black_widow);
  endfunction
endclass

module tb;
  marvel_first mar;
  initial begin
    mar=new();
    mar.display();
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:28 2025
 OG_Avengers === Black_widow
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
