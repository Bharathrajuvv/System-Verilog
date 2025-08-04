module array_locator;
  int a[$] = '{2,3,4,1,5,7,5,6};
  int res[$];
  initial begin
    $display("==================================================");
    $display("Original values:%p",a);
    res=a.find_first(x)with(x>1);
    $display("Find fisrt:%p",res);
    res=a.find_first_index(x)with(x>1);
    $display("Find first index:%p",res);
    res=a.find_last(x)with(x<3);
    $display("Last:%p",res);
    res=a.find_last_index(x)with(x<3);
    $display("last index:%p",res);
    $display("==================================================");
  end
endmodule

Output:
==================================================
Original values:'{2, 3, 4, 1, 5, 7, 5, 6} 
Find fisrt:'{2} 
Find first index:'{0} 
Last:'{1} 
last index:'{3} 
==================================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
