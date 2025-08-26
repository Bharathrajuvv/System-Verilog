module enum_array;
  typedef enum {MON, TUE, WED, THU, FRI, SAT, SUN} day_t;
  day_t week [7];

  initial begin
    foreach (week[i]) week[i] = day_t'(i);

    foreach (week[i])
      $display("Day %0d = %s", i, week[i].name());

    $finish;
  end
endmodule

Output:
# KERNEL: ASDB file was created in location /home/runner/dataset.asdb
# KERNEL: Day 0 = MON
# KERNEL: Day 1 = TUE
# KERNEL: Day 2 = WED
# KERNEL: Day 3 = THU
# KERNEL: Day 4 = FRI
# KERNEL: Day 5 = SAT
# KERNEL: Day 6 = SUN
# RUNTIME: Info: RUNTIME_0068 design.sv (11): $finish called.
