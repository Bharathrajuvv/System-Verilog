module fork_join_any;
  initial begin
    $display("[%0t] All the process start",$time);
    fork
      print (22,"Process 1");
      print (28,"Process 2");
      print (32,"Process 3");
    join_any
    $display("[%0t] All the process end",$time);
  end
  task automatic print(int tim,string timn);
    #(tim) $display("[%0t] %s",$time, timn);
  endtask
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 28 10:36 2025
[0] All the process start
[22] Process 1
[22] All the process end
[28] Process 2
[32] Process 3
           V C S   S i m u l a t i o n   R e p o r t 
