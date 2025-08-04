module ordering_demo;
  int arr[6] = '{5, 2, 9, 1, 6, 3}; 
  int que[$] = '{7, 4, 8, 2};       

  initial begin
    $display("===========================================");
    $display("Original Array = %p", arr);
    $display("Original Queue = %p", que);

    // Shuffle
    arr.shuffle();
    que.shuffle();
    $display("After shuffle:");
    $display("Array = %p", arr);
    $display("Queue = %p", que);

    // Reverse
    arr.reverse();
    que.reverse();
    $display("After reverse:");
    $display("Array = %p", arr);
    $display("Queue = %p", que);

    // Sort
    arr.sort();
    que.sort();
    $display("After sort:");
    $display("Array = %p", arr);
    $display("Queue = %p", que);

    // Reverse sort
    arr.rsort();
    que.rsort();
    $display("After rsort:");
    $display("Array = %p", arr);
    $display("Queue = %p", que);
    $display("===========================================");
  end
endmodule

Output:
Original Array = '{5, 2, 9, 1, 6, 3} 
Original Queue = '{7, 4, 8, 2} 
After shuffle:
Array = '{9, 2, 1, 5, 3, 6} 
Queue = '{2, 7, 4, 8} 
After reverse:
Array = '{6, 3, 5, 1, 2, 9} 
Queue = '{8, 4, 7, 2} 
After sort:
Array = '{1, 2, 3, 5, 6, 9} 
Queue = '{2, 4, 7, 8} 
After rsort:
Array = '{9, 6, 5, 3, 2, 1} 
Queue = '{8, 7, 4, 2} 
===========================================
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
