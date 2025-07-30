// Code your testbench here
// or browse Examples
class item;
  randc bit [6:0] a;
  rand bit sel1,sel2;
  constraint level{a==get(sel1,sel2);}
  function bit[6:0] get(bit s1,s2);
    return (s1?(s2?7'h10:7'h20):(s2?7'h30:7'h40));
  endfunction
endclass

module tb;
  initial begin
    item ite=new();
    repeat(8)begin
      ite.randomize();
      $display("sel1=%0d sel2=%0d a=%h",ite.sel1,ite.sel2,ite.a);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 09:01 2025
sel1=1 sel2=0 a=20
sel1=0 sel2=0 a=40
sel1=0 sel2=1 a=30
sel1=0 sel2=1 a=30
sel1=1 sel2=0 a=20
sel1=0 sel2=0 a=40
sel1=1 sel2=0 a=20
sel1=0 sel2=1 a=30
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
