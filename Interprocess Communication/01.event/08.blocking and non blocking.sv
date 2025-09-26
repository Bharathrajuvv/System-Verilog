// Code your design here
module non_blocking_event;
  event BJT;
  initial begin 
    $display($time,"\t triggering the event");
    ->>BJT;
  end 
  initial begin
    #5;
    $display($time,"\t waiting for the event using wait");
    wait(BJT.triggered);
    $display($time,"\t event BJT is triggered using wait");
  end
  initial begin
    $display($time,"\t waiting for the event using @");
    @(BJT.triggered);
    $display($time,"\t event BJT is triggered using @");
  end
endmodule  

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:42 2025
                   0	 triggering the event
                   0	 waiting for the event using @
                   0	 event BJT is triggered using @
                   5	 waiting for the event using wait
           V C S   S i m u l a t i o n   R e p o r t 
Time: 5 ns
