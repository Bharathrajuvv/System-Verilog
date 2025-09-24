// Code your testbench here
// or browse Examples
virtual class first;
  bit [3:0] fun;
  int as;
  
  function new(bit [3:0] fun,int as);
    this.fun=fun;
    this.as=as;
  endfunction
  
  function void display;
    $display("first: fun=%0h as=%0h",fun,as);
  endfunction
endclass

class second extends first;
  function new();
    super.new(0,0);
  endfunction
  
  function void display;
    $display("second: fun=%0h as=%0h",fun,as);
  endfunction
endclass

module tb;
  initial begin
  first fir;
  second sec;
  sec=new();
  fir=sec;
  fir.fun=3;
  fir.as=2;
    fir.display();
  end
endmodule


Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 09:55 2025
first: fun=3 as=2
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
  
