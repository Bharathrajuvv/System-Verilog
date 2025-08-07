class trans;
  bit [31:0] data;
  int id;
  
  function new (bit [31:0] m_data);
    $display("Inside cons");
    data = m_data;
  endfunction
endclass

module class_eg;
  initial begin
    trans tr = new(5);
    $display("value of data= %0h",tr.data);
  end
endmodule

Output:
Inside cons
value of data= 5
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
