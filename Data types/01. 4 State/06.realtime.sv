module real_time_simple;
  realtime start_time, end_time, elapsed;

  initial begin
    start_time = $realtime; 
    for (int i = 0; i < 10; i++) begin
      #2.5; 
    end

    end_time = $realtime;   
    elapsed  = end_time - start_time;
    $display("Total time = %.2f ns", elapsed);  
  end
endmodule

output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Total time = 30.00 ns
# KERNEL: Simulation has finished. There are no more test vectors to simulate.
