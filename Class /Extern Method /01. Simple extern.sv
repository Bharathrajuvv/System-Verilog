// Code your testbench here
// or browse Examples
class slover;
  bit [7:0] sum;
  int slove;
  
  extern function void display();
    extern task sloves();
      endclass
      
      function void slover::display();
        $display("sum=%0d and slove=%0d ", sum,slove);
      endfunction
      
      task slover::sloves();
        $display("slove+sum==res=%0d",slove+sum);
      endtask
      
      module tb();
        slover slo;
        
        initial begin
          slo=new();
          slo.sum=200;
          slo.slove=2;
          
          slo.display();
          slo.sloves();
        end
      endmodule
      

      Output:
      Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 26 10:12 2025
sum=200 and slove=2 
slove+sum==res=202
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
