
import pkg_A::*;
import pkg_B::*;

module package_example;
  initial begin
    pkg_A::pkg_funct();
    pkg_B::pkg_funct();
  end
endmodule
