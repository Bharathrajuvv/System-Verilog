// Code your testbench here
// or browse Examples
module eg;
  event b;
  
  function function_a();
    $display("@%0t: Before trigger event b",$time);
    ->b;
    $display("@%0t: After trigger event b",$time);
  endfunction
  
  task function_b();
    $display("@%0t: waiting the event b",$time);
    @b;
    $display("@%0t: event b is trigger",$time);
  endtask
  
  initial begin
    fork 
      function_a();
      function_b();
    join_none
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:15 2025
@0: Before trigger event b
@0: After trigger event b
@0: waiting the event b
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
