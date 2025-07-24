module unpacked_struct_example;
  typedef struct {
    int a;
    byte b;} unpacked_s;

  unpacked_s my_struct;

  initial begin
    my_struct.a = 100;
    my_struct.b = 8'h3F;
    $display("=======================================================");
    $display("Unpacked Struct: a = %0d, b = %0h", my_struct.a, my_struct.b);
    $display("=======================================================");

  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 09:09 2025
=======================================================
Unpacked Struct: a = 100, b = 3f
=======================================================
           V C S   S i m u l a t i o n   R e p o r t 
