// Code your testbench here
// or browse Examples
class local_eg;
  byte  dta;
  local logic bh;
  function void display();
    $display("Values: dta=%0d  bh=%0d",dta,bh);
  endfunction
endclass

module tb;
  initial begin
    local_eg loc;
    loc=new();
    loc.dta=2;
    loc.bh=1;
  end
endmodule
    

Output:
TOOL:	xrun	23.09-s001: Started on Sep 25, 2025 at 10:51:07 EDT
xrun: 23.09-s001: (c) Copyright 1995-2023 Cadence Design Systems, Inc.
    loc.bh=1;
         |
xmvlog: *E,CLSNLO (testbench.sv,16|9): Access to local member 'bh' in class 'local_eg' is not allowed here.
xrun: *E,VLGERR: An error occurred during parsing.  Review the log file for errors with the code *E and fix those identified problems to proceed.  Exiting with code (status 1).
TOOL:	xrun	23.09-s001: Exiting on Sep 25, 2025 at 10:51:07 EDT  (total: 00:00:00)
Exit code expected: 0, received: 1
