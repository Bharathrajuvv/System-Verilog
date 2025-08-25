class parent;
  int data;
  function cal(int m_data);
    data=m_data;
  endfunction
endclass

  
class child extends parent ;
  int addr;
  function display();
    $display("Value of addr=%0h",addr);
  endfunction
endclass

 module class_eg;
  initial begin 
    child c1;
    c1=new();
    c1.cal(4);
    $display("Value of addr=%0h",c1.data);
    c1.addr=15;
    c1.display();
  end
endmodule

    
Output:
Value of addr=4
Value of addr=f
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
