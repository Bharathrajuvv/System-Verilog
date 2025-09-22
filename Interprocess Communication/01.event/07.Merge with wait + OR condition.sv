// Code your design here
module merge_events_2;
  reg ready = 0, error = 0;

  initial begin
    #15 ready = 1;
    #30 error = 1;
  end

  initial begin
    wait (ready || error);
    $display("Either ready or error at %0t", $time);
  end
endmodule                                                                                                                                                                                                                    



Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:21 2025
Either ready or error at 15
           V C S   S i m u l a t i o n   R e p o r t 
Time: 45 ns
CPU Time:  
