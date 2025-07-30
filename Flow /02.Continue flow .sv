module tb;
  initial begin
    $display("=======================");
    
    for(int i=0;i<10;i++)begin
      if(i==5)
      continue;
      $display("Iteration[%0d]",i);
    end
   $display("========================");
  end
endmodule

Output:
=======================
Iteration[0]
Iteration[1]
Iteration[2]
Iteration[3]
Iteration[4]
Iteration[6]
Iteration[7]
Iteration[8]
Iteration[9]
========================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
