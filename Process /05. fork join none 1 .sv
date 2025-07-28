module fork_join_none;
  initial begin
    $display("All the process start=%0t",$time);
    fork
      begin
        $display("Process A start=%0t",$time);
        #10;
        $display("Process A endt=%0t",$time);
      end
      begin
        $display("Process B start=%0t",$time);
        #20;
        $display("Process B end=%0t",$time);
      end
      begin
        $display("Process c start=%0t",$time);
        #30;
        $display("Process c end=%0t",$time);
      end
    join_none
    $display("All the process end=%0t",$time);
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 28 10:37 2025
All the process start=0
All the process end=0
Process A start=0
Process B start=0
Process c start=0
Process A endt=10
Process B end=20
Process c end=30
           V C S   S i m u l a t i o n   R e p o r t 
