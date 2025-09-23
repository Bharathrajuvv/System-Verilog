// Code your testbench here
// or browse Examples
module tb;
  semaphore bh;
  
  initial begin
    bh=new(6);
    fork 
      display(4);
      display(6);
    join
  end
  
  function automatic display(int key);
    bh.try_get(key);
    $display($time,"\t current simul time,got %0d keys",key);
   // #20;
    bh.put(key);
  endfunction
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 23 09:47 2025
                   0	 current simul time,got 4 keys
                   0	 current simul time,got 6 keys
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
