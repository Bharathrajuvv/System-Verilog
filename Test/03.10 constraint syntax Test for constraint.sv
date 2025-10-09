// Code your testbench here
// or browse Examples

3)Write a 10 constraint syntax?

1.implication constraint -- constraint le1{(value==10) -> num;}
2. range constraint -- constraint le2 { a inside {[10:50]}; }
3.if-else constraint -- constraint le3 { if (value == 40) num < 200;
                                        else num <400;}
4.unique constraint -- constraint le4 { unique {a, b, c}; }
5.dist constraint -- constraint le6 { value dist {0 := 2, 1 := 5, 2 := 3}; }
  6.solve before constraint -- constraint le6 { if(en == 1) { value inside {[0:100]}; } }
7.static constraint -- static constraint le7 { valu2 inside {10,20,30};}
8.relation constraint -- constraint le9 { x < y; }
9.inline constraint -- constraint le81 { value > 30; < 50 ;}
    constraint le82 { value > 30; <40;} // inline means both constraint matchs the same value constraint value in randomize part we use with keyword to declare also  but some time warining occurss 
10.soft constraint -- constraint le10 {soft val inside {5, [10:15]};}
