



#move
execute if score !lvl24 math matches ..15 as @e[type=armor_stand,tag=lvl24_en] at @s run tp @s ~-0.2 ~ ~0.2 ~ ~
execute if score !lvl24 math matches 20 run setblock 71 59 -58 minecraft:smooth_red_sandstone_slab[type=bottom,waterlogged=false]
execute if score !lvl24 math matches 20 run setblock 70 59 -57 minecraft:smooth_red_sandstone_slab[type=bottom,waterlogged=false]
execute if score !lvl24 math matches 20 run setblock 69 59 -56 minecraft:smooth_red_sandstone_slab[type=bottom,waterlogged=false]
execute if score !lvl24 math matches 20 run setblock 71 58 -58 minecraft:smooth_red_sandstone_slab[type=top,waterlogged=false]
execute if score !lvl24 math matches 20 run setblock 70 58 -57 minecraft:smooth_red_sandstone_slab[type=top,waterlogged=false]
execute if score !lvl24 math matches 20 run setblock 69 58 -56 minecraft:smooth_red_sandstone_slab[type=top,waterlogged=false]

#particle
execute if score !lvl24 math matches ..20 as @e[type=armor_stand,tag=lvl24_en] at @s run particle minecraft:crit ~ ~0.5 ~ 0.5 0.5 0.5 0.4 1 force @a

#campfire
execute positioned 84.67 64.44 -56.48 if entity @a[distance=..3,gamemode=adventure,tag=timeron] if block 84 64 -57 minecraft:campfire[facing=west,lit=true,signal_fire=false,waterlogged=false]{CookingTimes:[I;0,0,0,0],CookingTotalTimes:[I;0,0,0,0],Items:[]} run function we:lvl24_campfire

#reset
execute unless entity @a[scores={level=24},gamemode=adventure,tag=timeron] run function we:lvl24_reset
scoreboard players add !lvl24 math 1





