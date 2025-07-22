module packed_array_eg;
  bit [1:0][7:0] a = '{8'h34, 8'h43}; 

  initial begin
    $display("Packed array of bytes:");
    for (int i = 0; i < 2; i++) begin
      $display("a[%0d] = %h", i, a[i]);
      end
  end
endmodule


Output:
Packed array of bytes:
a[0] = 43
a[1] = 34
           V C S   S i m u l a t i o n   R e p o r t 
