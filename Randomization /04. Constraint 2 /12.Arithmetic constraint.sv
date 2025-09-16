// Code your testbench here
// or browse Examples
class arith;
  randc bit [3:0] a,b;
  
  constraint level {a - b == 10;}
endclass

program tb;
  arith ar=new();
  initial begin
    for(int i=0; i<8; i++)begin
      void'(ar.randomize());
      $display("Values: a=%0h b=%0h",ar.a,ar.b);
    end
  end
endprogram

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 16 09:59 2025
Values: a=c b=2
Values: a=e b=4
Values: a=f b=5
Values: a=a b=0
Values: a=b b=1
Values: a=d b=3
Values: a=e b=4
Values: a=c b=2
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
