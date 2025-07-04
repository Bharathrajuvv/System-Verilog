module tb;
  byte stype;
  byte unsigned ubyte;
  initial begin
    $display("size stype=%0d,ubyte=%0d",$bits(stype),$bits(ubyte));
    #2 stype='h4f;
       ubyte='h5f;
    #2 stype +=1;
       ubyte +=1;
    #2 ubyte='h6f;
    #2 ubyte +=1;
  end
  initial begin
    $monitor("[%0t ns]stype=%0d ubyte=%0d",$time,stype,ubyte);
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: size stype=8,ubyte=8
# KERNEL: [0 ns]stype=0 ubyte=0
# KERNEL: [2 ns]stype=79 ubyte=95
# KERNEL: [4 ns]stype=80 ubyte=96
# KERNEL: [6 ns]stype=80 ubyte=111
# KERNEL: [8 ns]stype=80 ubyte=112
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
