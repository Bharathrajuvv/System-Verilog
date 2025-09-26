// Code your testbench here
// or browse Examples
class marvel;
  static string movie = " Ironman ";
  static int no_of_movie ;
  
  static function void display(string count);
    no_of_movie=count;
    $display("NO.OF.Movies === %0d",no_of_movie);
  endfunction
endclass

module tb;
  marvel mar;
  initial begin
    $display("Movie == %0s", marvel::movie);
    marvel::display(3);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:24 2025
Movie ==  Ironman 
NO.OF.Movies === 3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
