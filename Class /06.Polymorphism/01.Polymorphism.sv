// Code your testbench here
// or browse Examples
class company;
  virtual function void company_name();
    $display("Company name");
  endfunction
  
  virtual task company_spe();
    $display("Company Sepification");
  endtask
endclass

class intel extends company;
  function void company_name();
    $display("Intel comapny---Hardware company");
  endfunction
  
  task company_spe();
    $display("Product company");
  endtask
endclass

class synopsys extends company;
  function void company_name();
    $display("Synopsys company----Hardware company");
  endfunction
  
  task comapny_spe();
    $display("Integrated company");
  endtask
endclass

class amd extends synopsys;
  function void company_name();
    $display("AMD company----Hardware company");
  endfunction
  
  task company_spe();
    $display("Semiconductor company");
  endtask
endclass

module tb;
  company com;
  intel i1;
  synopsys s1;
  amd a1;
  initial begin
    i1=new();
    s1=new();
    a1=new();
    
    com=i1;
    com.company_name();
    com.company_spe();
    
    com=s1;
    com.company_name();
    com.company_spe();
    
    s1=a1;
    s1.company_name();
    s1.company_spe();
  end
endmodule
    

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 24 10:03 2025
Intel comapny---Hardware company
Product company
Synopsys company----Hardware company
Company Sepification
AMD company----Hardware company
Semiconductor company
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
