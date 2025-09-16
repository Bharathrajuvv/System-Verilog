// Code your testbench here
// or browse Examples
class mountaint;
  rand reg [7:0] data;
  constraint q { data inside {[20:30]};}
endclass

module tb;
  mountaint mon=new();
  initial begin
    $display("Before constraint disable");
    void'(mon.randomize());
    $display("data=%0d",mon.data);
    
    mon.q.constraint_mode(0);
    
    $display("After constraint disable");    
    repeat (10) begin
      void'(mon.randomize());
      $display("value=%0d",mon.data);
    end
  end
endmodule

    
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 09:55 2025
Before constraint disable
data=20
After constraint disable
value=155
value=198
value=140
value=73
value=177
value=22
value=161
value=251
value=183
value=224
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
