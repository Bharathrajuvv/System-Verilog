class nested_if;
  randc bit[6:0] value;
  rand enum{low,scartt,mid,high}scale;
  constraint level{if(scale==low)value<20;
                   else if (scale==scartt){value>=20;value<=50;}
                     else if (scale==mid){value>=50;value<=80;}
                       else value > 80;}
endclass

module tb;
  initial begin
    nested_if item=new();
    repeat(90)begin
      item.randomize();
      $display("Scale=%s,value=%0d",item.scale.name(),item.value);
    end
  end
endmodule

Output:
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Jul 29 09:14 2025
Scale=high,value=95
Scale=low,value=18
Scale=mid,value=79
Scale=mid,value=51
Scale=high,value=124
Scale=scartt,value=34
Scale=mid,value=75
Scale=high,value=115
Scale=mid,value=67
Scale=scartt,value=35
Scale=high,value=127
Scale=low,value=11
Scale=scartt,value=20
Scale=low,value=15
Scale=high,value=113
Scale=low,value=10
Scale=mid,value=61
Scale=mid,value=64
Scale=high,value=117
Scale=mid,value=57
Scale=scartt,value=25
Scale=scartt,value=40
Scale=high,value=88
Scale=high,value=110
Scale=high,value=125
Scale=high,value=101
Scale=high,value=82
Scale=mid,value=58
Scale=scartt,value=44
Scale=scartt,value=37
Scale=high,value=87
Scale=high,value=116
Scale=high,value=98
Scale=high,value=94
Scale=scartt,value=36
Scale=mid,value=55
Scale=high,value=86
Scale=scartt,value=46
Scale=mid,value=52
Scale=high,value=118
Scale=high,value=106
Scale=high,value=119
Scale=scartt,value=41
Scale=mid,value=80
Scale=high,value=107
Scale=mid,value=65
Scale=high,value=91
Scale=high,value=103
Scale=low,value=5
Scale=mid,value=54
Scale=low,value=4
Scale=high,value=89
Scale=scartt,value=24
Scale=low,value=7
Scale=mid,value=78
Scale=mid,value=76
Scale=high,value=112
Scale=mid,value=71
Scale=mid,value=77
Scale=high,value=84
Scale=scartt,value=26
Scale=high,value=105
Scale=scartt,value=31
Scale=high,value=81
Scale=mid,value=72
Scale=scartt,value=45
Scale=scartt,value=32
Scale=low,value=19
Scale=scartt,value=29
Scale=high,value=96
Scale=high,value=123
Scale=mid,value=70
Scale=low,value=0
Scale=mid,value=69
Scale=high,value=83
Scale=mid,value=60
Scale=mid,value=56
Scale=scartt,value=22
Scale=low,value=14
Scale=high,value=90
Scale=mid,value=66
Scale=scartt,value=33
Scale=mid,value=62
Scale=high,value=92
Scale=low,value=3
Scale=high,value=85
Scale=high,value=97
Scale=scartt,value=27
Scale=high,value=99
Scale=high,value=111
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns
                     
