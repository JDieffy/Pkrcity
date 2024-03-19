



#explosion
particle minecraft:item magma_block ~ ~0.5 ~ 0.5 0.5 0.5 0.3 200 force @a
particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0.3 10 force @a
particle flash ~ ~0.5 ~ 0 0 0 0 1 force @a
playsound minecraft:we_effect.rocket_hit ambient @a[distance=..15] 58.00 58.56 -50.97 10 1

#kill
kill @e[type=tnt,tag=lvl22_tnt]

#set block
setblock 44 53 -65 minecraft:air
setblock 44 54 -65 minecraft:air
setblock 45 53 -66 minecraft:air
setblock 45 54 -66 minecraft:air
setblock 45 55 -66 minecraft:air
setblock 46 53 -67 minecraft:air





