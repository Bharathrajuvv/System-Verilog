// Code your testbench here
// or browse Examples
virtual class don;
  bit [7:0] p;
  int vc;
  
  pure virtual function void display();
endclass

class jun extends don;
  function void display();
    $display("p=%0d,vc=%0d",p,vc);
  endfunction
endclass

module tb;
  initial begin
    don d;
    jun j;
    j=new();
    d=j;
    d.p=23;
    d.vc=1;
    d.display();
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 09:59 2025
p=23,vc=1
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
