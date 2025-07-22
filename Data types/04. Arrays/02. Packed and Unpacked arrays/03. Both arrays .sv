module array_eg;
  bit[3:0] b[3][2]='{'{4'h2,4'h3},
                     '{4'h1,4'h4},
                     '{4'h6,4'h5}};
  initial begin
    foreach (b[i,j])begin
      $display("b[%0h][%0h]=%0h",i,j,b[i][j]);
    end
  end
endmodule


Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 22 10:24 2025
b[0][0]=2
b[0][1]=3
b[1][0]=1
b[1][1]=4
b[2][0]=6
b[2][1]=5
           V C S   S i m u l a t i o n   R e p o r t 
