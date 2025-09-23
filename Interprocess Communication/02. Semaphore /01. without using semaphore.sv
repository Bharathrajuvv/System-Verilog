// Code your testbench here
// or browse Examples
module tb;
  event bh;
  task start_a();
    $display("write to a mailbox");
    ->bh;
    #5;
    $display("read to a mailbox");
  endtask
  
  task end_b();
    $display("execte in mailbox");
    #10;
    @(bh);
    $display("done in mailbox");
  endtask
  
  initial begin
    fork
      start_a();
      end_b();
    join
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:42 2025
write to a mailbox
execte in mailbox
read to a mailbox
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
