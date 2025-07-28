module fork_join;
  initial begin
    $display("All the process start=%0t",$time);
    fork
      begin
        $display("Process A start = %0t",$time);
        #100;
        $display("Process A end = %0t",$time);
      end
      begin
        $display("Process B start = %0t",$time);
        #45;
        $display("Process B end = %0t",$time);
      end
      begin
        $display("Process C start = %0t",$time);
        #25;
        $display("Process c end = %0t",$time);
      end
    join
    $display("Fork_join complete = %0t",$time);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 28 10:34 2025
All the process start=0
Process A start = 0
Process B start = 0
Process C start = 0
Process c end = 25
Process B end = 45
Process A end = 100
Fork_join complete = 100
           V C S   S i m u l a t i o n   R e p o r t 
Time: 100 ns
