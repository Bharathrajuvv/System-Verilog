class if_else;
  randc bit[6:0] value;
  rand enum{low,high}scale;
  constraint level {value==((scale==low)? 20 : 90);}
endclass

module if_else_eg;
  if_else item;
  initial begin
    item = new();
    repeat(10)begin
      item.randomize();
      $display("Scale = %s ,value=%0d",item.scale,item.value);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:23 2025
Scale = low ,value=20
Scale = high ,value=90
Scale = high ,value=90
Scale = low ,value=20
Scale = low ,value=20
Scale = high ,value=90
Scale = high ,value=90
Scale = low ,value=20
Scale = high ,value=90
Scale = low ,value=20
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
