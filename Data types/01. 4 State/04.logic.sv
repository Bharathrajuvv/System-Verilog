// Code your design here
module lo_eg;
  logic [3:0] a,b;
  logic [3:0] sum;
  logic carry;
  logic zero;
  logic of;
  initial begin
    a=5;
    b=12;
    #1;
    $display("%0d+%0d=%0d (carry:%b,zero:%b,of:%b)",a,b,sum,carry,zero,of);
  end
  assign {carry,sum} = a+b;
  assign zero = (sum == 4'd0);
  assign of = (a[3] == b[3]) && (sum[3] != a[3]);
endmodule

output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: 5+12=1 (carry:1,zero:0,of:0)
