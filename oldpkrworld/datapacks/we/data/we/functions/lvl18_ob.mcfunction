





#particle
execute if score !lvl18 math matches ..30 as @e[type=armor_stand,tag=lvl18_en] at @s run particle minecraft:ash ~ ~ ~ 0.3 0.3 0.3 0 1 force @a

#tp down
#jump 1
#tp chain
execute if score !lvl18 math matches 1 run playsound minecraft:we_effect.gate_opening ambient @a[distance=..10] ~ ~ ~ 10 1.2
execute if score !lvl18 math matches 1..5 as @e[type=armor_stand,tag=lvl18_1chain1] at @s run tp @s ~ ~-0.2 ~
execute if score !lvl18 math matches 1..10 as @e[type=armor_stand,tag=lvl18_1chain2] at @s run tp @s ~ ~-0.2 ~
execute if score !lvl18 math matches 1..15 as @e[type=armor_stand,tag=lvl18_1chain3] at @s run tp @s ~ ~-0.2 ~
execute if score !lvl18 math matches 1..20 as @e[type=armor_stand,tag=lvl18_1chain4] at @s run tp @s ~ ~-0.2 ~

#tp block
execute if score !lvl18 math matches 1..20 as @e[type=armor_stand,tag=lvl18_1block] at @s run tp @s ~ ~-0.2 ~

#set block
execute if score !lvl18 math matches 20 as @e[type=armor_stand,tag=lvl18_1block] at @s run setblock ~ ~1 ~ pink_stained_glass

#jump 2
#tp chain
execute if score !lvl18 math matches 11 run playsound minecraft:we_effect.gate_opening ambient @a[distance=..10] ~ ~ ~ 10 1.2
execute if score !lvl18 math matches 11..15 as @e[type=armor_stand,tag=lvl18_2chain1] at @s run tp @s ~ ~-0.2 ~
execute if score !lvl18 math matches 11..20 as @e[type=armor_stand,tag=lvl18_2chain2] at @s run tp @s ~ ~-0.2 ~
execute if score !lvl18 math matches 11..25 as @e[type=armor_stand,tag=lvl18_2chain3] at @s run tp @s ~ ~-0.2 ~
execute if score !lvl18 math matches 11..30 as @e[type=armor_stand,tag=lvl18_2chain4] at @s run tp @s ~ ~-0.2 ~

#tp block
execute if score !lvl18 math matches 11..30 as @e[type=armor_stand,tag=lvl18_2block] at @s run tp @s ~ ~-0.2 ~

#set block
execute if score !lvl18 math matches 30 as @e[type=armor_stand,tag=lvl18_2block] at @s run setblock ~ ~1 ~ pink_stained_glass

#tp up
#jump 1
#tp chain
execute if score !lvl18 math matches 100 run playsound minecraft:we_effect.gate_opening ambient @a[distance=..15] ~ ~ ~ 10 0.8
execute if score !lvl18 math matches 100..109 as @e[type=armor_stand,tag=lvl18_1chain1] at @s run tp @s ~ ~0.1 ~
execute if score !lvl18 math matches 100..119 as @e[type=armor_stand,tag=lvl18_1chain2] at @s run tp @s ~ ~0.1 ~
execute if score !lvl18 math matches 100..129 as @e[type=armor_stand,tag=lvl18_1chain3] at @s run tp @s ~ ~0.1 ~
execute if score !lvl18 math matches 100..139 as @e[type=armor_stand,tag=lvl18_1chain4] at @s run tp @s ~ ~0.1 ~

#tp block
execute if score !lvl18 math matches 100..139 as @e[type=armor_stand,tag=lvl18_1block] at @s run tp @s ~ ~0.1 ~

#set block
execute if score !lvl18 math matches 99 as @e[type=armor_stand,tag=lvl18_1block] at @s run setblock ~ ~1 ~ air

#jump 2
#tp chain
execute if score !lvl18 math matches 130 run playsound minecraft:we_effect.gate_opening ambient @a[distance=..15] ~ ~ ~ 10 0.8
execute if score !lvl18 math matches 130..139 as @e[type=armor_stand,tag=lvl18_2chain1] at @s run tp @s ~ ~0.1 ~
execute if score !lvl18 math matches 130..149 as @e[type=armor_stand,tag=lvl18_2chain2] at @s run tp @s ~ ~0.1 ~
execute if score !lvl18 math matches 130..159 as @e[type=armor_stand,tag=lvl18_2chain3] at @s run tp @s ~ ~0.1 ~
execute if score !lvl18 math matches 130..169 as @e[type=armor_stand,tag=lvl18_2chain4] at @s run tp @s ~ ~0.1 ~

#tp block
execute if score !lvl18 math matches 130..169 as @e[type=armor_stand,tag=lvl18_2block] at @s run tp @s ~ ~0.1 ~

#set block
execute if score !lvl18 math matches 130 as @e[type=armor_stand,tag=lvl18_2block] at @s run setblock ~ ~1 ~ air

#reset
execute if score !lvl18 math matches 180.. run function we:lvl18_reset
scoreboard players add !lvl18 math 1






