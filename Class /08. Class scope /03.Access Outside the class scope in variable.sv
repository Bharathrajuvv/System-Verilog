// Code your testbench here
// or browse Examples
class local_eg;
  byte data;
  logic bh;
  function new();
    data=34;
    bh=12;
  endfunction
  
  local function void display();
    $display("Constant value : data=%0d  bh=%0d",data,bh);
  endfunction
endclass

module tb;
  local_eg loc;
  initial begin
    loc=new();
    loc.display();
  end
endmodule



Output:
TOOL:	xrun	23.09-s001: Started on Sep 25, 2025 at 11:02:10 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
    loc.display();
              |
xmvlog: *E,CLSNLO (testbench.sv,20|14): Access to local member 'display' in class 'local_eg' is not allowed here.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Sep 25, 2025 at 11:02:10 EDT  (total: 00:00:00)
Exit code expected: 0, received: 1
Done
