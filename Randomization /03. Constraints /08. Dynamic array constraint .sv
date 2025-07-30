class array;
  randc bit[3:0] a [];
  randc bit [7:0] b[$];
  constraint size{b.size() == 8;}
  constraint level{foreach(a[i]) a[i] == i;
                   foreach(b[i]) b[i] == i*2;}
  function new();
    a=new[8];
   
 endfunction
endclass

module tb;
  initial begin
    array item=new();
    item.randomize();
    $display("a=%p b=%p",item.a,item.b);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 30 09:02 2025
a='{'h0, 'h1, 'h2, 'h3, 'h4, 'h5, 'h6, 'h7}  b='{'h0, 'h2, 'h4, 'h6, 'h8, 'ha, 'hc, 'he} 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
