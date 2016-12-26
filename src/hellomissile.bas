 rem Hello Missile

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

 player0x = 64
 player0y = 40

 missile0height = 1
 missile0x = 73
 missile0y = 40

mainloop
 COLUP0 = 14
 NUSIZ0 = $33
 drawscreen
 goto mainloop
