// Code your testbench here
// or browse Examples
module tb;
  semaphore bh = new(6);
  
  task ram();
    bh.get(5);
    $display("My work is done");
    #23;
    $display("else is there any pending");
    bh.put(5);
  endtask
  
  task idly();
    bh.get(4);
    $display("idly is preparing");
    #5;
    $display("idly is stearm well done");
    bh.put(6);
  endtask
  
  initial begin
    fork
      ram();
      idly();
    join_any
  end
endmodule


Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:45 2025
My work is done
else is there any pending
idly is preparing
idly is stearm well done
           V C S   S i m u l a t i o n   R e p o r t 
Time: 28 ns
