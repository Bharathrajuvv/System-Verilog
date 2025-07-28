module fork_join_any;
  initial begin
    $display("All the process start=%0t",$time);
    fork
    begin
      $display("Process A start =%0t",$time);
      #10;
      $display("Process A end =%0t",$time);
    end
    begin
      $display("Process B start=%0t",$time);
      #25;
      $display("Process B end=%0t",$time);
    end
    begin
      $display("Process c start=%0t",$time);
      #20;
      $display("Process c end=%0t",$time);
    end
    join_any
    $display("All the process end=%0t",$time);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 28 10:35 2025
All the process start=0
Process A start =0
Process B start=0
Process c start=0
Process A end =10
All the process end=10
Process c end=20
Process B end=25
           V C S   S i m u l a t i o n   R e p o r t 
