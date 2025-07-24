module union_eg;
  typedef union packed {bit [15:0] salary;
                        bit [15:0] id;
               }emply;
  initial begin
    emply emp;
    $display("========================================");
    emp.salary='h455;
    $display("Salary update for Emp:%p",emp);
    emp.id='d1224;
    $display("ID update for Emp:%p",emp);
    $display("========================================");
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 09:13 2025
========================================
Salary update for Emp:'{salary:'h455}
ID update for Emp:'{salary:'h4c8}
========================================
           V C S   S i m u l a t i o n   R e p o r t 

    
