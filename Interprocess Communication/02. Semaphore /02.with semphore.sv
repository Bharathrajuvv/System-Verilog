// Code your testbench here
// or browse Examples
module rtl_eg();
  semaphore rt =new(2);
  
  task start_a();
    rt.get();
    $display("write to a mailbox");
    #5;
    $display("read to a mailbox");
    rt.put();
  endtask
  
  task end_b();
    rt.get();
    $display("execute to a mailbox");
    #10;
    $display("done to a mailbox");
    rt.put();
  endtask
  
  initial begin
    fork
      start_a();
      end_b();
    join
  end
endmodule
    

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:43 2025
write to a mailbox
execute to a mailbox
read to a mailbox
done to a mailbox
           V C S   S i m u l a t i o n   R e p o r t 
Time: 10 ns
CPU Time:    
