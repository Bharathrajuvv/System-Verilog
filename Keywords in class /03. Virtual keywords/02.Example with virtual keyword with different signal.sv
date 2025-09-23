// Code your testbench here
// or browse Examples
class one;
  bit [3:0] num;
  int as;
  
  virtual function void display(bit [3:0] num,int as);
    $display("one: num=%0h as=%0h",num,as);
  endfunction
endclass

class second extends one;
  function void display(bit [3:0] num);
    $display("second:num=%0h",num);
  endfunction
endclass

program tb;
  initial begin
    one on;
    second sec;
    sec=new();
    on=sec;
    on.num=4;
    on.as=2;
    on.display(on.num,on.as);
  end
endprogram

Output:
     tb
TimeScale is 1 ns / 1 ns

Error-[SV-INACF] Invalid number of args to class function
  Too few arguments in class-method 'display' in derived class 'second'.
  Base class-method declared at "testbench.sv", 7
  Derived class-method declared at "testbench.sv", 13
  Please make sure that correct number of arguments are specified.

1 error
CPU time: .248 seconds to compile
Exit code expected: 0, received: 255
