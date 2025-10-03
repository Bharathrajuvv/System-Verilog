module simple_task;
  
  task arithmetic(input int a,b,
                  output bit res);
    if(a > b)
      $display("a is greater than b");
    else if(a < b)
      $display("a is less than b");
    else
      $display("a and b are equal");
    #5;
    res = 1; 
  endtask
  
  initial begin
    bit res;
    arithmetic(24,46,res);
    if(res) $display("comparison completed at time = %0t",$time);
    arithmetic(34,88,res);
    if(res) $display("comparison completed at time = %0t",$time);
    arithmetic(32,32,res);
    if(res) $display("comparison completed at time = %0t",$time);
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  3 09:15 2025
a is less than b
comparison completed at time = 5
a is less than b
comparison completed at time = 10
a and b are equal
comparison completed at time = 15
           V C S   S i m u l a t i o n   R e p o r t 
Time: 15 ns
