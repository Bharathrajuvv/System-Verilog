// Packae 1
package india;

  string level = "India second most powerful state";
  function tamil();
    $display("level=%0s",level);
  endfunction

endpackage

// Package 2
package india1;

import india::*;

int level =2;

function tamil();
  $display("level=%0d",level);
endfunction

endpackage

// Package 3
package india2;

import india1::*;

typedef enum { industry,medical,education} spec;

spec spe;

task run();
  spe = spe.first();
  repeat (spe.num())begin
   $display("state=%s",spe.name());
    spe = spe.next();
    $display("state=%0s",spe.name());
  end
  $finish;
endtask

function void tamil();
  $display(" spe=%0s",spe.name());
endfunction
endpackage


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 03:05 2025
level=India second most powerful state
level=2
 spe=industry
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
