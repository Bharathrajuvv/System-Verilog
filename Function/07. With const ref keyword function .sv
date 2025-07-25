module function_example;
  int a, b;
  int out;
  
  function automatic int fn_multiply(const ref int a, b);
    a = a*b;
    return a;
  endfunction

  initial begin
    a = 5;
    b = 6;
    out = fn_multiply(a,b);
    $display("Function: out = %0d, a = %0d and b = %0d", out, a, b);
  end
endmodule

Output:
testbench.sv, 6
  'const' variable is either driven or connected to a non-const variable.
  Variable 'a' declared as 'const' cannot be used in this context
  Source info: a = (a * b);

1 error
CPU time: .215 seconds to compile
Exit code expected: 0, received: 255
