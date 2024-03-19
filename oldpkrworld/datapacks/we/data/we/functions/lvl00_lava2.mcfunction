


#runs when a lever in lobby toggle
execute if block 64 7 -39 minecraft:lever[face=wall,facing=north,powered=false] run setblock 61 6 -43 minecraft:lever[face=floor,facing=west,powered=false]
execute if block 64 7 -39 minecraft:lever[face=wall,facing=north,powered=false] run fill 66 9 -40 64 9 -42 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp
execute if block 64 7 -39 minecraft:lever[face=wall,facing=north,powered=true] run setblock 61 6 -43 minecraft:lever[face=floor,facing=west,powered=true]
execute if block 64 7 -39 minecraft:lever[face=wall,facing=north,powered=true] run fill 66 9 -40 64 9 -42 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp




