// Code your testbench here
// or browse Examples
class packet;
  rand bit a,b;
  //rand bit b;
  constraint c {if(a=='1)
                   b=='0;}
endclass

program tb;
  initial begin
    packet pkt = new();
    repeat(12)begin
      pkt.randomize();
      $display("Bidrection values:a=%0d b=%0d",pkt.a,pkt.b);
    end
  end
endprogram

  
Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:41 2025
Bidrection values:a=0 b=0
Bidrection values:a=0 b=0
Bidrection values:a=0 b=1
Bidrection values:a=0 b=1
Bidrection values:a=1 b=0
Bidrection values:a=0 b=0
Bidrection values:a=1 b=0
Bidrection values:a=0 b=1
Bidrection values:a=0 b=1
Bidrection values:a=0 b=1
Bidrection values:a=0 b=0
Bidrection values:a=1 b=0
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
