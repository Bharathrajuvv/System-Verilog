module queue;
  int j;
  int q[$] = '{0,5,6};
  initial begin
    $display("==================================");
    $display("Initial : %p",q);
    j=2;
    q.insert(2 ,j);
    $display("Insert 2:%p",q);
    q.delete(1);
    $display("Delete 5:%p",q);
    q.push_front(4);
    $display("Push front 4:%p",q);
    q.push_back(8);
    $display("Push back 8:%p",q);
    q.reverse();
    $display("Reverse queue:%p",q);
    q.sort();
    $display("Sort queue:%p",q);
    q.rsort();
    $display("rsort queuq:%p",q);
    q.shuffle();
    $display("Shuffle queue:%p",q);
    $display("===================================");
    end
endmodule

Output:
==================================
Initial : '{0, 5, 6} 
Insert 2:'{0, 5, 2, 6} 
Delete 5:'{0, 2, 6} 
Push front 4:'{4, 0, 2, 6} 
Push back 8:'{4, 0, 2, 6, 8} 
Reverse queue:'{8, 6, 2, 0, 4} 
Sort queue:'{0, 2, 4, 6, 8} 
rsort queuq:'{8, 6, 4, 2, 0} 
Shuffle queue:'{2, 6, 0, 8, 4} 
===================================
           V C S   S i m u l a t i o n   R e p o r t 
