module ordering_demo;
  int arr[6] = '{5, 2, 9, 1, 6, 3}; 
  int que[$];       

  initial begin
    $display("===========================================");
    $display("Original Array = %p", arr);

    // Shuffle
    arr.shuffle();
    $display("After shuffle:");
    $display("Array = %p", arr);

    // Reverse
    arr.reverse();
    $display("After reverse:");
    $display("Array = %p", arr);

    // Sort
    arr.sort();
    $display("After sort:");
    $display("Array = %p", arr);

    // Reverse sort
    arr.rsort();
    $display("After rsort:");
    $display("Array = %p", arr);
    $display("===========================================");
  end
endmodule

Output:
===========================================
Original Array = '{5, 2, 9, 1, 6, 3} 
After shuffle:
Array = '{9, 2, 1, 5, 3, 6} 
After reverse:
Array = '{6, 3, 5, 1, 2, 9} 
After sort:
Array = '{1, 2, 3, 5, 6, 9} 
After rsort:
Array = '{9, 6, 5, 3, 2, 1} 
===========================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 n
