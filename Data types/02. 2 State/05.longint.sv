module longint_example;
  longint  value1;
  longint  value2;
  longint  result;

  initial begin
    value1 = 64'd5000000000;
    value2 = -64'd3000000000;
    
    result = value1 + value2;

    $display("Value 1 = %0d", value1);
    $display("Value 2 = %0d", value2);
    $display("Result  = %0d", result);
  end

endmodule

Output:
# KERNEL: Value 1 = 5000000000
# KERNEL: Value 2 = -3000000000
# KERNEL: Result  = 2000000000
