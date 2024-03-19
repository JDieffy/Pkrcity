





#particle
particle falling_dust gravel 68 62 -70 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 68 62 -69 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 67 62 -69 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 66 63 -69 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 67 62 -68 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 69 62 -76 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 68 62 -76 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 67 63 -76 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 68 62 -75 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 67 63 -75 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 66 64 -75 0.3 0.3 0.3 0 10 force @a
particle falling_dust gravel 68 62 -74 0.3 0.3 0.3 0 10 force @a

#other
kill @e[type=falling_block,tag=lvl23_fall]
fill 66 55 -68 69 54 -76 lava replace minecraft:gravel
playsound minecraft:we_effect.stone_collapse ambient @a[distance=..10] ~ ~ ~ 10 2
scoreboard players set !lvl23 math 1




