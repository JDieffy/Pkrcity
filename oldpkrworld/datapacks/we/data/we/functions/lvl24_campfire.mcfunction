





setblock 84 64 -57 minecraft:campfire[facing=west,lit=false,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]}
execute positioned 84.57 64.44 -56.44 run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..10] 84.57 64.44 -56.44 10 1
particle minecraft:large_smoke 84.57 64.44 -56.44 0.5 0.5 0.5 0.1 40 force @a




