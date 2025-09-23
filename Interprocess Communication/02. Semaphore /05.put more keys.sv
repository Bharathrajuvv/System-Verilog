// Code your testbench here
// or browse Examples
module semaphore_example();
  semaphore sem = new(3);
  
  task process();
    sem.get(3);
    $display("process is started");
    #5ns;
    $display("process is completed");
    sem.put(5);
  endtask

  initial begin
    process();
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:49 2025
process is started
process is completed
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5 ns
