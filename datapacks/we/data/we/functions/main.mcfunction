



#runs every tick as nothing
#as player function
execute as @a at @s run function we:pl_tick

#for lvl00
execute positioned 66.38 8.13 -42.00 as @a[distance=..7,gamemode=adventure,sort=nearest,limit=1] run tp @e[type=parrot,tag=lvl00_bird] 66.46 8.13 -42.50 facing entity @s

#for lvl1
execute positioned 49.93 10.50 -36.88 if entity @a[distance=..3,gamemode=adventure] unless block 51 10 -40 minecraft:obsidian unless entity @e[type=falling_block,tag=lvl1_ob] run function we:lvl1_ob
execute positioned 54.45 11.00 -41 unless entity @a[distance=..9,gamemode=adventure] if block 51 10 -40 minecraft:obsidian run function we:lvl1_ob_reset

#for lvl3
execute if score !lvl3 math matches ..0 positioned 53.61 14.50 12.35 as @a[distance=..1,gamemode=adventure] run function we:lvl3_ob

#for lvl6
execute positioned 116.34 30.00 -11.39 if entity @a[distance=..4,tag=timeron,gamemode=adventure] unless entity @e[distance=..6.9,tag=lvl6_armor_stand] positioned 116.38 30.00 -12.61 run function we:lvl6_prep
execute positioned 117.00 30.31 -3.64 if entity @a[distance=..20,tag=timeron,gamemode=adventure] if entity @e[tag=lvl6_armor_stand] positioned 116.38 30.00 -12.61 run function we:lvl6_ob
execute positioned 117.00 30.31 -3.64 unless entity @a[distance=..20,tag=timeron,gamemode=adventure] if entity @e[tag=lvl6_armor_stand] positioned 116.38 30.00 -12.61 run kill @e[tag=lvl6_armor_stand]

#for lvl8
execute positioned 66.58 38.00 -34.62 as @a[distance=..4,tag=timeron,gamemode=adventure,tag=!lvl8_used] at @s unless block ~ ~-0.9 ~ air unless predicate we:if_sneak unless block ~ ~-0.9 ~ pumpkin run function we:lvl8_ob
execute positioned 69.26 38.00 -38.04 as @a[distance=..4] at @s unless block ~ ~-1.9 ~ dark_oak_log unless block ~ ~-2.9 ~ dark_oak_log unless block ~ ~-0.9 ~ pumpkin run effect give @s minecraft:jump_boost 2 250 true

#for lvl9
execute if score !lvl9 math matches ..0 positioned 38 33 -13 as @a[distance=..1,tag=timeron,gamemode=adventure] at @s run function we:lvl9_prep
execute if score !lvl9 math matches 1.. run function we:lvl9_ob

#for lvl10
execute positioned 55.55 37.00 -38.51 if entity @a[distance=..2,tag=timeron,gamemode=adventure] if score !lvl10 math matches ..0 run scoreboard players set !lvl10 math 1
execute if score !lvl10 math matches 1.. run function we:lvl10_ob

#for lvl11
execute at @a[x=25,y=30,z=-27,dx=1,dy=2.01,dz=2,tag=timeron,gamemode=adventure] unless block ~ ~-0.1 ~ #we:no_hitbox if block 25 31 -26 minecraft:quartz_slab run function we:lvl11_ob
execute if entity @a[x=22,y=30,z=-29,dx=20,dy=5,dz=7,gamemode=!creative] unless block 25 31 -26 minecraft:quartz_slab unless entity @a[x=25,y=30,z=-27,dx=6,dy=4,dz=3,tag=timeron,gamemode=adventure] run function we:lvl11_ob_reset
execute if entity @a[x=22,y=26,z=-28,dx=8,dy=3,dz=7,tag=timeron,gamemode=adventure] positioned 26.33 17.13 -28.78 run kill @e[distance=..10,type=minecraft:furnace_minecart,tag=lvl11_carts]

###for lvl12 (No longer needed)
##execute positioned 43.13 22.00 -47.62 as @a[distance=..1,gamemode=adventure] unless predicate we:effect_levitation run function we:lvl12_ob
##execute positioned 41.54 26.00 -48.58 as @a[distance=..4,gamemode=adventure] at @s if entity @s[y=27,dy=2] run effect clear @s levitation

#for lvl13
execute if score !lvl13 math matches ..0 if entity @a[scores={level=13}] run function we:lvl13_prep
execute if score !lvl13 math matches 1.. run function we:lvl13_ob

#for level 16
execute if score !lvl16 math matches ..0 positioned 91.47 48.00 33.61 if entity @a[distance=..7,gamemode=adventure,tag=timeron] run function we:lvl16_reset
execute if score !lvl16 math matches 1.. positioned 91.47 48.00 33.61 run function we:lvl16_ob

#for level 18
execute if score !lvl18 math matches ..0 positioned 110.82 42.00 -28.76 if entity @a[distance=..2,gamemode=adventure,tag=timeron] run function we:lvl18_start
execute if score !lvl18 math matches 1.. positioned 110.82 42.00 -28.76 run function we:lvl18_ob

#for level 22
execute if score !lvl22 math matches ..0 positioned 64.04 53.00 -50.13 if entity @a[distance=..3,gamemode=adventure,tag=timeron] run function we:lvl22_start
execute if score !lvl22 math matches 1.. positioned 64.04 53.00 -50.13 run function we:lvl22_ob

#for level 23
execute if score !lvl23 math matches ..0 positioned 64.83 56.00 -63.82 at @a[distance=..5,scores={level=20..23},gamemode=adventure,tag=!ignore_lvl23_jump,tag=timeron] run function we:lvl23_start
execute if score !lvl23 math matches 1.. positioned 64.83 56.00 -63.82 run function we:lvl23_ob

#for level 24
execute if score !lvl24 math matches ..0 if entity @a[scores={level=24},gamemode=adventure,tag=timeron] run function we:lvl24_start
execute if score !lvl24 math matches 1.. run function we:lvl24_ob

#particles
execute positioned 53.58 15 12.45 run particle minecraft:item_slime 53.58 14.50 12.45 0.3 0.3 0.3 0.2 1 force @a[distance=..10]
#execute positioned 43.13 22.00 -47.22 run particle minecraft:item_slime 43.13 22.00 -47.22 0.3 0.3 0.3 0.2 1 force @a[distance=..10]

#sec tick
scoreboard players add !sec_tick game 1
execute if score !sec_tick game matches 20.. run function we:main_sec
