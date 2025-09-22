// Code your testbench here
// or browse Examples

module event_eg;
  event bh;
  
  task function_a();
    $display("@%0t: Before trigger event bh",$time);
    ->bh;
    $display("@%0t: After trigger event bh",$time);
  endtask
  
  task function_b();
    #5;
    $display("@%0t: waiting trigger event bh",$time);
    @bh;
    $display("@%0t: event bh is trigger",$time);
  endtask
  
  initial begin
    fork
      function_a();
      function_b();
    join
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:14 2025
@0: Before trigger event bh
@0: After trigger event bh
@5: waiting trigger event bh
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5 ns
