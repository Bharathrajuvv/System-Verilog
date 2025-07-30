module tb;
  initial begin
    $display("=======================");
    
    for(int i=0;i<10;i++)begin
      $display("Iteration[%0d]",i);
      if(i==5)
      break;
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
Iteration[5]
========================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
