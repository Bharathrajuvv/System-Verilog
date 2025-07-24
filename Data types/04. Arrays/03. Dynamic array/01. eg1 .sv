module dyn_array_eg;
  int array[];
  initial begin
    array = new[5];
    array = '{2,4,6,8,0};
    $display("===================");
    foreach (array[i])
      $display("array[%0d]=%0d",i,array[i]);
    $display("Size of array = %0d",array.size());
    $display("===================");
  end
endmodule
