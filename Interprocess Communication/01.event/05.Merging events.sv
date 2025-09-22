// Code your testbench here
// or browse Examples
module siperman;
  event a,b;
  initial begin
    fork
      #30 ->a;
      #20 ->b;
      #11 a=b;
      begin
        wait(a.triggered);
        $display("[%0t] event a is done",$time);
      end
      begin
        wait(b.triggered);
        $display("[%0t] event b is done",$time);
      end
    join
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:18 2025
[20] event b is done
           V C S   S i m u l a t i o n   R e p o r t 
Time: 30 ns
