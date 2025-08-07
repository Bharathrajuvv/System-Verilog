class trans;
  bit[31:0] data;
  int id;
  
  task updata(bit[31:0] m_da, m_id);
    data=m_da;
    id=m_id;
  endtask
  
  function print(trans tr);
    $display("value of data=%0h and id=%0h",tr.data,tr.id);
  endfunction
endclass


module class_eg;
  initial begin
    trans tr=new();
    tr.updata(8,9);
    tr.print(tr);
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Aug  7 11:40 2025
value of data=8 and id=9
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
