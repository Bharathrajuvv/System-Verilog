module array_locator;
  int a[$] = '{2,3,4,1,5,7,5,6};
  int res[$];
  initial begin
    $display("==================================================");
    $display("Original values:%p",a);
    res=a.find(x)with(x==5);
    $display("Find element:%p",res);
    res=a.find_index(x)with((x==5));
    $display("Find index element:%p",res);
    $display("==================================================");
 end
endmodule

Output:
==================================================
Original values:'{2, 3, 4, 1, 5, 7, 5, 6} 
Find element:'{5, 5} 
Find index element:'{4, 6} 
==================================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
