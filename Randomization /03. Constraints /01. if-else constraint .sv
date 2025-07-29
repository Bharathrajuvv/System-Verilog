class if_else;
  rand bit[4:0] value;
  rand enum{low,high}scale;
  constraint exe{if(scale == high)value<10;
                 else value >=10;}
endclass

module if_else_eg;
  if_else item;
  initial begin
    item = new();
    repeat(8)begin
      item.randomize();
      $display("Scale = %s value=%0d",item.scale.name(),item.value);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:13 2025
Scale = low value=22
Scale = low value=12
Scale = low value=16
Scale = high value=8
Scale = high value=1
Scale = low value=14
Scale = high value=2
Scale = high value=7
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
    
