class first;
  bit [31:0] data;
  function new(bit [31:0] data);
    this.data=data;
    $display("First: Value of data=%0d",data);
  endfunction
endclass

class second extends first;
  bit [31:0] dta;
  function new(bit [31:0] data_f,dta_s);
    super.new(data_f);
    this.dta=dta_s;
    $display("Second: Value of data=%0d",dta);
  endfunction
endclass

module tb;
  initial begin
    second sec;
    sec=new(24,9);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 10:05 2025
First: Value of data=24
Second: Value of data=9
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
