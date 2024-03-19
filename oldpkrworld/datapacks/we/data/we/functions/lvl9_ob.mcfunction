


#summon door inner
execute if score !lvl9 math matches 1 run fill 34 30 -22 35 31 -22 air
execute if score !lvl9 math matches 1 run summon armor_stand 34 30 -22 {Tags:["lvl9_drin","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 1 run summon armor_stand 35 30 -22 {Tags:["lvl9_drin","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 1 run summon armor_stand 35 31 -22 {Tags:["lvl9_drin","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 1 run summon armor_stand 34 31 -22 {Tags:["lvl9_drin","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}

#tp inner door
execute if score !lvl9 math matches 2..11 as @e[type=armor_stand,tag=lvl9_drin] at @s run tp @s ^ ^ ^0.1

#summon out door
execute if score !lvl9 math matches 11 run fill 33 29 -21 36 32 -21 air
execute if score !lvl9 math matches 11 run summon marker 35.00 31.00 -20.49 {Tags:["lvl9_dr","lvl9_drma"]}
execute if score !lvl9 math matches 11 run summon armor_stand 33 32 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 33 31 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 33 30 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 34 32 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 35 32 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 36 32 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 33 29 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 34 29 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 35 29 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 36 29 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 36 31 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}
execute if score !lvl9 math matches 11 run summon armor_stand 36 30 -21 {Tags:["lvl9_drot","lvl9_dr"],NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,PersistenceRequired:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_shovel",Count:1b,tag:{CustomModelData:6}}]}

#tp out and in door
execute if score !lvl9 math matches 12..21 as @e[type=armor_stand,tag=lvl9_drot] at @s facing entity @e[type=marker,tag=lvl9_drma,limit=1] eyes run tp @s ^ ^ ^-0.124
execute if score !lvl9 math matches 12..31 as @e[type=armor_stand,tag=lvl9_drin] at @s facing entity @e[type=marker,tag=lvl9_drma,limit=1] eyes run tp @s ^ ^ ^-0.124

#close door
execute if score !lvl9 math matches 50 run kill @e[type=armor_stand,tag=lvl9_dr]
execute if score !lvl9 math matches 50 run setblock 33 32 -21 minecraft:gold_block
execute if score !lvl9 math matches 51 run setblock 33 31 -21 minecraft:gold_block
execute if score !lvl9 math matches 52 run setblock 33 30 -21 minecraft:gold_block
execute if score !lvl9 math matches 53 run setblock 33 29 -21 minecraft:gold_block
execute if score !lvl9 math matches 54 run setblock 34 29 -21 minecraft:gold_block
execute if score !lvl9 math matches 55 run setblock 35 29 -21 minecraft:gold_block
execute if score !lvl9 math matches 56 run setblock 36 29 -21 minecraft:gold_block
execute if score !lvl9 math matches 57 run setblock 36 30 -21 minecraft:gold_block
execute if score !lvl9 math matches 58 run setblock 36 31 -21 minecraft:gold_block
execute if score !lvl9 math matches 59 run setblock 36 32 -21 minecraft:gold_block
execute if score !lvl9 math matches 60 run setblock 35 32 -21 minecraft:gold_block
execute if score !lvl9 math matches 61 run setblock 34 32 -21 minecraft:gold_block
execute if score !lvl9 math matches 62 run setblock 34 31 -22 minecraft:gold_block
execute if score !lvl9 math matches 63 run setblock 34 30 -22 minecraft:gold_block
execute if score !lvl9 math matches 64 run setblock 35 30 -22 minecraft:gold_block
execute if score !lvl9 math matches 65 run setblock 35 31 -22 minecraft:gold_block

#reset
execute if score !lvl9 math matches 65 unless entity @e[type=furnace_minecart,tag=lvl11_carts] run scoreboard players set !carts math 1
execute if score !lvl9 math matches 65 run kill @e[type=marker,tag=lvl9_dr]
execute if score !lvl9 math matches 65 run scoreboard players set !lvl9 math -1
execute if score !lvl9 math matches ..31 run scoreboard players add !lvl9 math 1
execute if score !lvl9 math matches 32.. positioned 38.50 33.03 -12.50 unless entity @a[distance=..7,gamemode=adventure,tag=timeron] run scoreboard players add !lvl9 math 1














