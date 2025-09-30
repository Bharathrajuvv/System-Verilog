package animal;
class kangaroo;
  string name = " Australia National Animal ";
  bit [400:0] count = 50000000;
  
  function void display();
    $display("Speical Value : name=%0s and Their counts=%0d",name,count);
  endfunction
endclass

function pkt;
  $display("Boxing The kangaroo ");
endfunction
endpackage


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 02:55 2025
Speical Value : name= Australia National Animal  and Their counts=50000000
Boxing The kangaroo 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
