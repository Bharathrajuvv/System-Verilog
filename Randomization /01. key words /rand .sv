class bus;
  rand bit [4:0] addr;
  rand bit [5:0] data;
endclass

module tb;
  initial begin
    bus Bus = new();
    repeat (10)
      begin
        if(Bus.randomize()==1)
          $display("addr=%0d data=%0d",Bus.addr,Bus.data);
        else 
          $display("Randomization failed");
      end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:01 2025
addr=3 data=15
addr=22 data=23
addr=1 data=30
addr=9 data=15
addr=13 data=31
addr=7 data=8
addr=16 data=33
addr=18 data=21
addr=29 data=13
addr=26 data=54
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
