// Code your testbench here
// or browse Examples
class sat;
  byte dat;
  string team;
  
  function new();
    dat=25;
    team="first_team";
  endfunction
  
  function void display();
    $display("Best team : dat=%0h----team=%0s",dat,team);
  endfunction
endclass

class sun extends sat;
  byte dat;
  string team;
  
  function new();
    dat=2;
    team="second_team";
  endfunction
  
  function void display();
    $display(" classical team : dat=%0h----team=%0s",dat,team);
  endfunction
endclass

module tb;
  initial begin
    sat s;
    sun su;
   // s=new();
    su=new();
    su=s;
    s.display();
    //su.display();
  end
endmodule
  

Output:
TimeScale is 1 ns / 1 ns

Error-[SV-ICA] Illegal class assignment
testbench.sv, 37
"su = s;"
  Expression 's' on rhs is not a class or a compatible class and hence cannot 
  be assigned to a class handle on lhs.
  Source type: class $unit::sat
  Target type: class $unit::sun
  Please make sure that the lhs and rhs expressions are compatible.
  

1 error
CPU time: .260 seconds to compile
Exit code expected: 0, received: 255
