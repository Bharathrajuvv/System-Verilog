// Code your testbench here
// or browse Examples
class eg;
  bit [31:0] data;
  int nu;
  
  static function new(bit [31:0] data, int nu);
    this.data=data;
    this.nu=nu;
  endfunction
endclass

module tb;
  initial begin
    eg e =new(8,6);
    $display("Value of data=%0h nu=%0h",e.data,e.nu);
  end
endmodule

Output:
rror-[IDM] Invalid declaration modifier
testbench.sv, 7
  Modifier 'static' cannot be used in a class constructor declaration.

1 error
CPU time: .246 seconds to compile
Exit code expected: 0, received: 255
