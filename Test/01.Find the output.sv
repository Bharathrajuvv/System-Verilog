// Code your testbench here
// or browse Examples

1.Find the output: 

class array_abc; 
rand unsigned int myarray[]; 
endclass 
constraint c_abc_val { 
myarray.size inside { [10:16] }; 
foreach (myarray[i]) 
if (i>0) myarray[i] < myarray[i-1]; 
} 



Here constraint is declare outside of class so it give as error only

Error-[IVDS] Incorrect variable declaration syntax
testbench.sv, 5
  Variable declarations without data type require 'var' keyword.


Error-[SE] Syntax error
  Following verilog source has syntax error :
  "testbench.sv", 5: token is 'int'
  rand unsigned int myarray[]; 
                   ^
  SystemVerilog  keyword 'int' is not expected to be used in this context.

2 errors
CPU time: .254 seconds to compile
Exit code expected: 0, received: 255
