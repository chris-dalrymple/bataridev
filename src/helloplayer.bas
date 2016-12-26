 rem Hello Player

 playfield:
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 ................................
 ................................
 ................................
 ................................
 ................................
 ................................
 ................................
 ................................
 ................................
 XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
end

 rem Always remember to indent the tag. Otherwise it will not be recognized.

 player0:
 %01111110
 %10000001
 %10011001
 %10100101
 %10000001
 %10100101
 %10000001
 %01111110
end

 COLUPF = 14
 scorecolor = 14
 player0x = 76
 player0y = 40

mainloop
 COLUP0 = 14
 PF0 = %10000000
 drawscreen
 goto mainloop
