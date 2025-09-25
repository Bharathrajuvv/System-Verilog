// Code your testbench here
// or browse Examples
class calu;
  bit [12:0] data;
  int we;
  
  function new();
    data=32;
    we=1;
  endfunction
  
  local function void display();
    $display("Assecpt tion:data=%0d****we=%0d",data,we);
  endfunction
endclass

class calu2 extends calu;
  bit [32:0] value;
  task clua;
    value=data*we;
    display();
    $display("value=%0d",value);
  endtask
endclass

module tb;
  calu2 ca;
  initial begin
    ca=new();
    ca.clua;
  end
endmodule


Output:
Error-[SV-ICMA] Illegal class method access
testbench.sv, 21
  Local method 'display' of class 'calu' is not visible to scope 'calu2'.
  Please make sure that the above method is called only from its own class 
  properties as it is declared as local.

1 error
CPU time: .240 seconds to compile
Exit code expected: 0, received: 255
  
  
  
