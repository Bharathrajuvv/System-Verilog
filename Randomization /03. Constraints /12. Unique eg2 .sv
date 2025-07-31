// Code your testbench here
// or browse Examples
class unique_elements;
  rand bit [31:0] array[10];
  
  constraint array_c {unique {array};
                      foreach(array[i]) array[i] < 10;}
  
  function void display();
    $display("array = %p",array);
  endfunction
endclass

program unique_elements_randomization;
  unique_elements pkt;

  initial begin
    pkt = new();
    pkt.randomize();
    pkt.display();   
  end
  
endprogram

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 31 04:35 2025
array = '{'h0, 'h5, 'h2, 'h8, 'h6, 'h3, 'h7, 'h9, 'h1, 'h4} 
$finish at simulation time                    0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
