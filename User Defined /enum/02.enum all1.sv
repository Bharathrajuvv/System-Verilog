// Code your testbench here
// or browse Examples
module enum_loop_num;
  typedef enum {IDLE, READ, WRITE, DONE} state_t;
  state_t s;

  initial begin
    s = s.first();
    repeat (s.num()) begin         
      $display("State = %s", s.name());
      s = s.next();
    end
    $finish;
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: State = IDLE
# KERNEL: State = READ
# KERNEL: State = WRITE
# KERNEL: State = DONE
# RUNTIME: Info: RUNTIME_0068 testbench.sv (13): $finish called.
