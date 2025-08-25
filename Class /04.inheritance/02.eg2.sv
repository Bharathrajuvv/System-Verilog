class parent;
  int data;
  function cal(int n_data);
    data=n_data;
  endfunction
endclass

class child extends parent;
  int addr;
  function cal(int n_data);
    data=n_data**2;
  endfunction
endclass

module class_eg;
  initial begin
  child c1;
  c1=new();
  c1.addr=12;
    c1.cal(10);
    $display("---------------------------------------------------");
    $display("Value of data = %0d and addr = %0d",c1.data,c1.addr);
    $display("---------------------------------------------------");
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug 25 07:42 2025
---------------------------------------------------
Value of data = 100 and addr = 12
---------------------------------------------------
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
