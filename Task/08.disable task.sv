// Code your testbench here
// or browse Examples
module disable_task();
  initial  begin
    $display("\t ----output of disable task----");
    fork
      display_task();
      #20;
      disable display_task.task_A;
    join
  end
  
  task display_task();
    begin : task_A
      $display("\t @ %0t ns , task_A initiated",$time);
      #30;
      $display("\t @ %0t ns , task_A finished",$time);
    end :task_A
   
    begin : task_B
      $display("\t @ %0t ns , task_B initiated",$time);
      #10;
      $display("\t @ %0t ns , task_B finished",$time);
    end :task_B
  endtask
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:32 2025
	 ----output of disable task----
	 @ 0 ns , task_A initiated
	 @ 0 ns , task_B initiated
	 @ 10 ns , task_B finished
           V C S   S i m u l a t i o n   R e p o r t 
Time: 20 ns
