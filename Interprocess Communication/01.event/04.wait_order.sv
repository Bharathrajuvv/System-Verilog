// Code your testbench here
// or browse Examples
module cap;
  event bh;
  event ar;
  event ath;
  
  initial begin
    fork 
      begin
        #5;
        $display($time,"\ Trigger the event bh");
        ->bh;
      end
      begin
        #6;
        $display($time,"\ Trigger the event ar");
        ->ar;
      end
      begin
        #7;
        $display($time,"\ Trigger the event ath");
        ->ath;
      end
      begin
        $display($time,"\ wating for events to active");
        wait_order(bh,ar,ath)
        $display($time,"\ event trigger inorder");
        else
          $display($time,"\ event not active");
      end
    join
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 22 09:17 2025
                   0 wating for events to active
                   5 Trigger the event bh
                   6 Trigger the event ar
                   7 Trigger the event ath
                   7 event trigger inorder
           V C S   S i m u l a t i o n   R e p o r t 
Time: 7 ns
