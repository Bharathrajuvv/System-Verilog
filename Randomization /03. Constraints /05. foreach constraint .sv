class array;
  randc bit[4:0] a[8];
  constraint level { foreach (a[i]) {a[i] == i;}}
    endclass
    
module tb;
  initial begin
    array item = new();
    item.randomize();
    $display("array=%p",item.a);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 08:58 2025
array='{'h0, 'h1, 'h2, 'h3, 'h4, 'h5, 'h6, 'h7} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns                    
    
    
