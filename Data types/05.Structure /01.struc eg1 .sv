module strut_eg;
  struct {string name;
          int roll_num;
          int mark;}stud_det;
  initial begin
    stud_det.name="Bharath";
    stud_det.roll_num="10";
    stud_det.mark="371";
    $display("========================================================================");
    $display("Student details: %p",stud_det);
    $display("Student name=%s,roll num=%0d,mark=%0d",stud_det.name,stud_det.roll_num,stud_det.mark);
    $display("========================================================================");

  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 09:05 2025
========================================================================
Student details: '{name:"Bharath", roll_num:12592, mark:3356465}
Student name=Bharath,roll num=12592,mark=3356465
========================================================================
           V C S   S i m u l a t i o n   R e p o r t 
