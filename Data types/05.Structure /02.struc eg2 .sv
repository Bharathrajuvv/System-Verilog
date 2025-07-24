module strut_eg;
 typedef struct {string name;
          int roll_num;
          int mark;}stud_det;
  stud_det st1,st2;
  initial begin
    st1='{"Bharath",10,371};
    st2.name="Raju";
    st2.roll_num=11;
    st2.mark=450;
   
    $display("========================================================================");
    $display("Student details st1: %p",st1);
    $display("Student details st2: %p",st2);
    $display("========================================================================");

  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 24 09:07 2025
========================================================================
Student details st1: '{name:"Bharath", roll_num:10, mark:371}
Student details st2: '{name:"Raju", roll_num:11, mark:450}
========================================================================
           V C S   S i m u l a t i o n   R e p o r t 
