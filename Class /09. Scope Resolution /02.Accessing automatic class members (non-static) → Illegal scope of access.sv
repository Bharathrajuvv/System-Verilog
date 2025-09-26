// Code your testbench here
// or browse Examples
class dc;
  string movie= "Justice Legue";
endclass

module tb;
  dc d;
  initial begin
    $display("Movie === %0s",dc::movie);
  end
endmodule

Output:
Error-[SV-IRTAV] Illegal reference to automatic variable
testbench.sv, 10
"$unit::dc::movie"
  Hierarchical reference to automatic variable 'movie' is not legal.
  Declared at:
  "testbench.sv", 4

1 error
CPU time: .267 seconds to compile
Exit code expected: 0, received: 255
