// Code your testbench here
// or browse Examples

Class const; // Class C in capital letter and const is keyword but usign as name for class 
rand bit [7:0] low, mid, high; 
constraint Const_1 {low <mid<high;}  // mention in with and logical and for comparsion 
end class 
  
  // Correct code 
class const;
  rand bit [7:0] low, mid, high;

  constraint level { (low < mid) && (mid < high); }
endclass

  
