// Code your testbench here
// or browse Examples
class trans #(parameter WIDTH =8, type  D_type= byte);
  byte data;
  D_type bh;
  
  function void display();
    $display("Constant value: data=%0d  bh=%0d",data,bh);
  endfunction
  
  function new();
    data=32;
    bh=24;
  endfunction
endclass 

program tb;
  trans tr;
  trans #(16,byte) tr16;
  trans #(.WIDTH(4))tr4;
  initial begin
    tr=new();
    tr16=new();
    tr4=new();
    
    tr.display();
    tr16.data=45;
    tr16.display();
    tr4.data=2;
    tr4.display();
  end
endprogram

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 25 10:41 2025
Constant value: data=32  bh=24
Constant value: data=45  bh=24
Constant value: data=2  bh=24
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
