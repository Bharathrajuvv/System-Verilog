package stru;

class movie;
  string name="Something Something";
  string level="My Favorite movie";
  
  function void display();
    $display("Movies Suggestion: name=%0s || level=%0s ",name,level);
  endfunction
endclass

function release_s();
  $display("2003");
endfunction

endpackage

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Sep 30 02:53 2025
Movies Suggestion: name=Something Something || level=My Favorite movie 
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
