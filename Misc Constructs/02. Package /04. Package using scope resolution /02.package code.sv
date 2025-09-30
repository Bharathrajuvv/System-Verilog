package pkg_A;
  int data = 5;
  function pkg_funct();
    $display("pkg_A: Inside pkg_funct, data = %0d", data);
  endfunction
endpackage

package pkg_B;
  int data = 10;
  function pkg_funct();
    $display("pkg_B: Inside pkg_funct, data = %0d", data);
  endfunction
endpackage

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 02:59 2025
pkg_A: Inside pkg_funct, data = 5
pkg_B: Inside pkg_funct, data = 10
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
