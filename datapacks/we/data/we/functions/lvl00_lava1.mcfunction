


#runs when a lever in lobby toggle
execute if block 61 6 -43 minecraft:lever[face=floor,facing=west,powered=false] run setblock 64 7 -39 minecraft:lever[face=wall,facing=north,powered=false]
execute if block 61 6 -43 minecraft:lever[face=floor,facing=west,powered=false] run fill 66 9 -40 64 9 -42 minecraft:redstone_lamp[lit=false] replace minecraft:redstone_lamp
execute if block 61 6 -43 minecraft:lever[face=floor,facing=west,powered=true] run setblock 64 7 -39 minecraft:lever[face=wall,facing=north,powered=true]
execute if block 61 6 -43 minecraft:lever[face=floor,facing=west,powered=true] run fill 66 9 -40 64 9 -42 minecraft:redstone_lamp[lit=true] replace minecraft:redstone_lamp





