class Bus;
  randc bit[3:0] addr;
  randc logic[4:0] data;
endclass

module tb;
  initial begin
    Bus bus=new();
    repeat(10)
      begin
        if(bus.randomize()==1)
          $display("addr=%0d data=%0d",bus.addr,bus.data);
        else
          $display("Randomization failed");
      end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:02 2025
addr=1 data=11
addr=2 data=9
addr=0 data=7
addr=4 data=8
addr=3 data=17
addr=15 data=6
addr=9 data=5
addr=14 data=3
addr=10 data=10
addr=8 data=15
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
