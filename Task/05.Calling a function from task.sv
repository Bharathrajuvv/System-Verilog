// Code your testbench here
// or browse Examples
module func_call_task;
  initial begin
    $display("$time=%0t",$time);
    $display("\tcalling task");
    task_sum;
    $display("\treturned to intial from fuction");
  end
endmodule

task task_sum;
  #1;
  $display("\t@%0t , I'm in task",$time);
  $display("\tcaliing func inside a task");
  #1;
  void'(function_sum);
  $display("\treturned to task from function");
endtask

function function_sum;
  $display("\t@ %0t ns I'm in function",$time);
endfunction


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:23 2025
$time=0
	calling task
	@1 , I'm in task
	caliing func inside a task
	@ 2 ns I'm in function
	returned to task from function
	returned to intial from fuction
           V C S   S i m u l a t i o n   R e p o r t 
Time: 2 ns
