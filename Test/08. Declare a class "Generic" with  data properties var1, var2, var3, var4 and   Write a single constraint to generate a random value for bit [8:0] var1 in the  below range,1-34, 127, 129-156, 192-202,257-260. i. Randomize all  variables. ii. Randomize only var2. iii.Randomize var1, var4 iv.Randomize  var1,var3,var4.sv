// Code your testbench here
// or browse Examples

class genric;
  rand bit [8:0] val1;
  rand bit [8:0] val2;
  rand bit [8:0] val3;
  rand bit [8:0] val4;
  
  constraint level { val1 inside {[1:34] , 127 , [129:156] , [192:202], [257:260]} ; }
endclass

module tb;
  genric gen = new();
  initial begin
    repeat(20)begin
      gen.randomize();
      $display("val1=%0d val2=%0d val3=%0d val4=%0d",gen.val1,gen.val2,gen.val3,gen.val4);
      gen.randomize(val2);
      $display("val1=%0d val2=%0d val3=%0d val4=%0d",gen.val1,gen.val2,gen.val3,gen.val4);
      gen.randomize(val1, val4);
      $display("val1=%0d val2=%0d val3=%0d val4=%0d",gen.val1,gen.val2,gen.val3,gen.val4);
      gen.randomize(val1, val3, val4);
      $display("val1=%0d val2=%0d val3=%0d val4=%0d",gen.val1,gen.val2,gen.val3,gen.val4);
    end
  end
endmodule

Output:
Contains Synopsys proprietary information.
Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Oct  9 05:31 2025
val1=1 val2=163 val3=143 val4=17
val1=1 val2=470 val3=143 val4=17
val1=5 val2=470 val3=143 val4=1
val1=149 val2=470 val3=201 val4=79
val1=197 val2=45 val3=415 val4=248
val1=197 val2=423 val3=415 val4=248
val1=25 val2=423 val3=415 val4=240
val1=10 val2=423 val3=306 val4=21
val1=155 val2=317 val3=77 val4=63
val1=155 val2=410 val3=77 val4=63
val1=6 val2=410 val3=77 val4=143
val1=139 val2=410 val3=191 val4=124
val1=201 val2=415 val3=218 val4=363
val1=201 val2=318 val3=218 val4=363
val1=127 val2=318 val3=218 val4=378
val1=127 val2=318 val3=91 val4=460
val1=197 val2=404 val3=376 val4=97
val1=197 val2=451 val3=376 val4=97
val1=259 val2=451 val3=376 val4=72
val1=17 val2=451 val3=294 val4=34
val1=26 val2=416 val3=307 val4=270
val1=26 val2=369 val3=307 val4=270
val1=1 val2=369 val3=307 val4=72
val1=28 val2=369 val3=189 val4=198
val1=25 val2=429 val3=464 val4=386
val1=25 val2=287 val3=464 val4=386
val1=11 val2=287 val3=464 val4=175
val1=132 val2=287 val3=321 val4=503
val1=257 val2=185 val3=27 val4=112
val1=257 val2=488 val3=27 val4=112
val1=132 val2=488 val3=27 val4=126
val1=196 val2=488 val3=279 val4=330
val1=25 val2=110 val3=18 val4=434
val1=25 val2=105 val3=18 val4=434
val1=148 val2=105 val3=18 val4=311
val1=10 val2=105 val3=312 val4=63
val1=130 val2=62 val3=387 val4=434
val1=130 val2=254 val3=387 val4=434
val1=6 val2=254 val3=387 val4=278
val1=136 val2=254 val3=83 val4=461
val1=259 val2=111 val3=342 val4=238
val1=259 val2=461 val3=342 val4=238
val1=19 val2=461 val3=342 val4=409
val1=257 val2=461 val3=61 val4=289
val1=7 val2=479 val3=15 val4=231
val1=7 val2=246 val3=15 val4=231
val1=258 val2=246 val3=15 val4=10
val1=152 val2=246 val3=511 val4=487
val1=12 val2=62 val3=217 val4=355
val1=12 val2=58 val3=217 val4=355
val1=12 val2=58 val3=217 val4=427
val1=14 val2=58 val3=185 val4=253
val1=141 val2=195 val3=241 val4=159
val1=141 val2=329 val3=241 val4=159
val1=136 val2=329 val3=241 val4=55
val1=10 val2=329 val3=152 val4=235
val1=9 val2=153 val3=388 val4=511
val1=9 val2=212 val3=388 val4=511
val1=13 val2=212 val3=388 val4=484
val1=156 val2=212 val3=469 val4=148
val1=127 val2=318 val3=175 val4=452
val1=127 val2=65 val3=175 val4=452
val1=129 val2=65 val3=175 val4=474
val1=19 val2=65 val3=424 val4=372
val1=28 val2=432 val3=199 val4=94
val1=28 val2=495 val3=199 val4=94
val1=259 val2=495 val3=199 val4=195
val1=154 val2=495 val3=226 val4=67
val1=141 val2=27 val3=244 val4=199
val1=141 val2=4 val3=244 val4=199
val1=137 val2=4 val3=244 val4=420
val1=32 val2=4 val3=78 val4=314
val1=17 val2=269 val3=135 val4=44
val1=17 val2=60 val3=135 val4=44
val1=202 val2=60 val3=135 val4=167
val1=192 val2=60 val3=419 val4=67
val1=8 val2=461 val3=254 val4=7
val1=8 val2=364 val3=254 val4=7
val1=30 val2=364 val3=254 val4=205
val1=197 val2=364 val3=240 val4=503
           V C S   S i m u l a t i o n   R e p o r t 
Time: 0 ns



    
