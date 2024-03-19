



#jump 1
execute if score !lvl10 math matches 1 run summon armor_stand 51 33 -41 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lvl10_block","lvl10_stand1","lvl10_stand"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Color:4b,Tags:["lvl10_block","lvl10_shulk"]}]}
execute if score !lvl10 math matches 1 run summon armor_stand 51 34 -41 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lvl10_block","lvl10_stand1","lvl10_stand"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Color:4b,Tags:["lvl10_block","lvl10_shulk"]}]}
execute if score !lvl10 math matches 1 positioned 49.37 35.00 -44.13 run playsound minecraft:we_effect.stone_put ambient @a[distance=..12] 49.37 35.00 -44.13 1 1.4

#tp 1
execute if score !lvl10 math matches 2..17 as @e[type=armor_stand,tag=lvl10_stand1] at @s run tp @s ~ ~0.12 ~
execute if score !lvl10 math matches 19 as @e[type=armor_stand,tag=lvl10_stand1] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:yellow_shulker_box[facing=up]{} replace air

#jump 2
execute if score !lvl10 math matches 12 run summon armor_stand 49 33 -45 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lvl10_block","lvl10_stand2","lvl10_stand"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Color:4b,Tags:["lvl10_block","lvl10_shulk"]}]}
execute if score !lvl10 math matches 12 run summon armor_stand 49 34 -45 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lvl10_block","lvl10_stand2","lvl10_stand"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Color:4b,Tags:["lvl10_block","lvl10_shulk"]}]}
execute if score !lvl10 math matches 12 positioned 49.37 35.00 -44.13 run playsound minecraft:we_effect.stone_put ambient @a[distance=..12] 49.37 35.00 -44.13 1 1.4

#tp 2
execute if score !lvl10 math matches 13..28 as @e[type=armor_stand,tag=lvl10_stand2] at @s run tp @s ~ ~0.12 ~
execute if score !lvl10 math matches 30 as @e[type=armor_stand,tag=lvl10_stand2] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:yellow_shulker_box[facing=up]{} replace air

#jump 3
execute if score !lvl10 math matches 23 run summon armor_stand 46 34 -47 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lvl10_block","lvl10_stand3","lvl10_stand"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Color:4b,Tags:["lvl10_block","lvl10_shulk"]}]}
execute if score !lvl10 math matches 23 run summon armor_stand 46 35 -47 {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lvl10_block","lvl10_stand3","lvl10_stand"],Passengers:[{id:"minecraft:shulker",NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AttachFace:1b,Color:4b,Tags:["lvl10_block","lvl10_shulk"]}]}
execute if score !lvl10 math matches 23 positioned 49.37 35.00 -44.13 run playsound minecraft:we_effect.stone_put ambient @a[distance=..12] 49.37 35.00 -44.13 1 1.44

#tp 3
execute if score !lvl10 math matches 24..39 as @e[type=armor_stand,tag=lvl10_stand3] at @s run tp @s ~ ~0.12 ~
execute if score !lvl10 math matches 41 as @e[type=armor_stand,tag=lvl10_stand3] at @s run fill ~ ~ ~ ~ ~ ~ minecraft:yellow_shulker_box[facing=up]{} replace air

#tp down
execute if score !lvl10 math matches 71 positioned 49.39 37.00 -44.44 unless entity @a[distance=..9,tag=timeron,gamemode=adventure] at @e[type=armor_stand,tag=lvl10_stand] run fill ~ ~1 ~ ~ ~1 ~ air replace yellow_shulker_box
execute if score !lvl10 math matches 71 positioned 49.39 37.00 -44.44 unless entity @a[distance=..9,tag=timeron,gamemode=adventure] at @e[type=armor_stand,tag=lvl10_stand] run scoreboard players set !lvl10 math 72
execute if score !lvl10 math matches 72.. as @e[type=armor_stand,tag=lvl10_stand] at @s run tp @s ~ ~-0.1 ~
execute if score !lvl10 math matches 72.. as @e[type=armor_stand,tag=lvl10_stand] at @s unless block ~ ~1 ~ air unless block ~ ~1 ~ pink_stained_glass run kill @s

#reset
execute unless entity @e[type=armor_stand,tag=lvl10_stand] run kill @e[tag=lvl10_block]
execute unless entity @e[type=armor_stand,tag=lvl10_stand] run scoreboard players set !lvl10 math -1
execute if score !lvl10 math matches ..70 run scoreboard players add !lvl10 math 1
