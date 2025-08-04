module array_locator;
  int a[$] = '{2,3,4,1,5,7,5,6};
  int res[$];
  initial begin
    $display("=======================================");
    $display("min:%0d,max:%0d",a.min(),a.max());
    res=a.unique();
    $display("unique:%p",res);
    res=a.unique_index();
    $display("unique_index:%p",res);
    a.sort();
    $display("Sort:%p",res);
    a.rsort();
    $display("rsort:%p",res);
    $display("=======================================");
  end
endmodule

Output:
======================================
min:833602960,max:833603696
unique:'{2, 3, 4, 1, 5, 7, 6} 
unique_index:'{0, 1, 2, 3, 4, 5, 7} 
Sort:'{0, 1, 2, 3, 4, 5, 7} 
rsort:'{0, 1, 2, 3, 4, 5, 7} 
=======================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
