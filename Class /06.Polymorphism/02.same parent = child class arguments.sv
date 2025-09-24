// Code your testbench here
// or browse Examples
class ab;
  logic [2:0] a;
  shortint df;
  
   function void display();
    $display(" First: a=%0d df=%0d",a,df);
  endfunction
endclass

class cd extends ab;
  logic [2:0] a;
  shortint df;
  
   function void display();
    $display(" Second : a=%0d df=%0d",a,df);
  endfunction
endclass

program tb;
  initial begin
      ab b;
    cd c;
    c=new();
    b=c;
    
    b.a=3;
    b.df=24;
    
    c.a=2;
    c.df=31;
    b.display();
  end
endprogram
    

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 10:06 2025
 First: a=3 df=24
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
