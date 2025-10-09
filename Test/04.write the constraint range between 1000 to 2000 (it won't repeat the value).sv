// Code your testbench here
// or browse Examples

//write the constraint range between 1000 to 2000 (it won't repeat the value) 
  
class random_values;
    randc int value;
    int min_val = 1000;
    int max_val = 2000;
    constraint level {value inside {[min_val:max_val]};}
endclass

module tb;
  initial begin 
    random_values ran=new();
    $display(" Random values bet 1000 to 2000 %0d and %0d",ran.min_val,ran.max_val);
    for(int i=0; i<20; i++)begin
      ran.randomize();
       $display("Value[%0d] = %0d", i, ran.value);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 05:24 2025
 Random values bet 1000 to 2000 1000 and 2000
Value[0] = 1376
Value[1] = 1714
Value[2] = 1774
Value[3] = 1448
Value[4] = 1264
Value[5] = 1670
Value[6] = 1152
Value[7] = 1483
Value[8] = 1857
Value[9] = 1732
Value[10] = 1981
Value[11] = 1106
Value[12] = 1049
Value[13] = 1949
Value[14] = 1493
Value[15] = 1901
Value[16] = 1334
Value[17] = 1567
Value[18] = 1309
Value[19] = 1204
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
