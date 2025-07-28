module fork_join_none;
  initial begin
    $display("[%0t]main theard: fork join to start",$time);
    fork
      print(20,"theard 1");
      print(40,"theard 2");
      print(80,"theard 3");
    join_none
  end
  task print(int tim,string tie);
    #(tim) $display("[%0t]%s",$time,tie);
  endtask
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 28 10:38 2025
[0]main theard: fork join to start
[20]theard 3
[40]theard 3
[80]theard 3
           V C S   S i m u l a t i o n   R e p o r t 
Time: 80 ns
