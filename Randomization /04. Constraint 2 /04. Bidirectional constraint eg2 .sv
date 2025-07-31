// Code your testbench here
// or browse Examples
class bidire;
  randc bit a,b;
  constraint c {if(a=='0)
                   b=='1;}
endclass

program tb;
  initial begin
    bidire item = new();
    repeat(14)begin
      item.randomize() with {b=='0;};
      $display("Values : a=%0d b=%0d",item.a,item.b);
    end
  end
endprogram

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:42 2025
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
Values : a=1 b=0
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
