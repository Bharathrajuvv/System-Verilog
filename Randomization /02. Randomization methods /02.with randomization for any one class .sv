class packet;
  randc byte addr;
  randc byte data;   
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt = new();
    
    pkt.data.rand_mode(0);
    
    pkt.randomize();
    
    $display("\taddr = %0d \t data = %0d",pkt.addr,pkt.data);
    end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:07 2025
	addr = 105 	 data = 0
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
