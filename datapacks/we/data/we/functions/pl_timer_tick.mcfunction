



#runs as player with timer on every tick
#checkpoints
execute if score @s level matches ..1 if block ~ ~-0.9 ~ soul_soil run function we:pl_checkpoint_set
execute if score @s level matches ..2 if block ~ ~-0.4 ~ red_nether_brick_slab run function we:pl_checkpoint_set
execute if score @s level matches ..3 positioned 70.05 19.00 8.35 if entity @s[distance=..2] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..4 if block ~ ~-0.9 ~ quartz_bricks run function we:pl_checkpoint_set
execute if score @s level matches ..5 if block ~ ~-0.9 ~ smooth_red_sandstone run function we:pl_checkpoint_set
execute if score @s level matches ..6 if block ~ ~-0.4 ~ birch_slab run function we:pl_checkpoint_set
execute if score @s level matches ..7 if block ~ ~-0.9 ~ snow_block run function we:pl_checkpoint_set
execute if score @s level matches ..8 if block ~ ~-0.9 ~ grass_block positioned 35.59 28.00 -10.45 if entity @s[distance=..10] at @s run function we:pl_checkpoint_set
execute if score @s level matches ..9 positioned 34.99 29.50 -24.44 if entity @s[distance=..3.7] unless block ~ ~-0.9 ~ #we:no_hitbox positioned 35.01 29.50 -22.63 run function we:pl_checkpoint_set
execute if score @s level matches ..10 positioned 31.45 34.00 -24.49 if entity @s[distance=..2] unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..11 positioned 43.99 17.00 -42.46 if entity @s[distance=..2] unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..12 positioned 25.0 32.00 -50.05 if entity @s[distance=..2] unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..13 positioned 41.23 38.00 1.74 if entity @s[distance=..2.2] unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..14 if block ~ ~-0.9 ~ honeycomb_block run function we:pl_checkpoint_set
execute if score @s level matches ..15 if block ~ ~-0.9 ~ lime_terracotta run function we:pl_checkpoint_set
execute if score @s level matches ..16 if block ~ ~-0.9 ~ coarse_dirt positioned 108.56 45.00 -0.34 if entity @s[distance=..10] at @s run function we:pl_checkpoint_set
execute if score @s level matches ..17 positioned 113.51 50.00 -2.43 if entity @s[distance=..3] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..18 if block ~ ~-0.9 ~ cut_copper run function we:pl_checkpoint_set
execute if score @s level matches ..19 positioned 92.64 51.00 -39.47 if entity @s[distance=..2] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..20 positioned 80.57 54.00 -46.39 if entity @s[distance=..2] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..21 positioned 68.52 57.00 -46.97 if entity @s[distance=..3] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..22 positioned 64.83 56.00 -63.82 if entity @s[distance=..5.2] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set
execute if score @s level matches ..23 positioned 66.81 58.50 -59.18 if entity @s[distance=..2] at @s unless block ~ ~-0.9 ~ #we:no_hitbox run function we:pl_checkpoint_set

#trigger victory
execute positioned 79.45 64.00 -62.65 if entity @s[distance=..5] run function we:pl_gm_win

#lvl7 special
execute if score @s level matches 7 positioned 91.55 29.00 -34.02 if entity @s[distance=..7] at @s if block ~ ~-0.9 ~ minecraft:rooted_dirt run function we:pl_checkpoint_load

#lvl8 special
#execute if entity @s[tag=lvl8_used] run tp @s ~ ~ ~ facing entity @e[type=marker,tag=lvl8_face,limit=1]

#lvl9 special
execute if score @s level matches 8..9 if entity @s[x=29,y=28,z=-14,dx=7,dy=5,dz=2] run effect clear @s speed

#lvl 11 special
execute if score @s level matches 11..12 at @e[distance=..2,type=furnace_minecart,tag=lvl11_carts] if entity @s[distance=..0.5] unless predicate we:effect_slowness run function we:pl_hit_minecart

#lvl 23 special
execute if score @s level matches 23 if block ~ ~-0.9 ~ end_stone_bricks if entity @s[gamemode=adventure] run tag @s add ignore_lvl23_jump

#timer stuff
execute if score @s fail_timer matches ..0 run scoreboard players add @s timer_tick 1
execute if score @s fail_timer matches ..0 run scoreboard players add @s checkpoint_timer 1
execute if score @s timer_tick matches 20.. run function we:pl_timer_sec

#actionbar
execute if score @s checkpoint_timer matches 11.. if score @s fail_timer matches ..0 if score @s timer_tick matches ..9 run title @s actionbar ["",{"text":"[","color":"black"},{"text":"Fails:","color":"dark_aqua"},{"text":" ","color":"black"},{"score":{"name":"@s","objective":"fails"},"color":"aqua"},{"text":"] [","color":"black"},{"text":"Time:","color":"dark_aqua"},{"text":" ","color":"black"},{"score":{"name":"@s","objective":"timer_hour"},"color":"aqua"},{"text":"h,","color":"aqua"},{"score":{"name":"@s","objective":"timer_min"},"color":"aqua"},{"text":"m,","color":"aqua"},{"score":{"name":"@s","objective":"timer_sec"},"color":"aqua"},{"text":"s,","color":"aqua"},{"text":"0","color":"aqua"},{"score":{"name":"@s","objective":"timer_tick"},"color":"aqua"},{"text":"t","color":"aqua"},{"text":"] [","color":"black"},{"text":"Jumps:","color":"dark_aqua"},{"text":" ","color":"black"},{"score":{"name":"@s","objective":"jumps"},"color":"aqua"},{"text":"]","color":"black"}]
execute if score @s checkpoint_timer matches 11.. if score @s fail_timer matches ..0 if score @s timer_tick matches 10.. run title @s actionbar ["",{"text":"[","color":"black"},{"text":"Fails:","color":"dark_aqua"},{"text":" ","color":"black"},{"score":{"name":"@s","objective":"fails"},"color":"aqua"},{"text":"] [","color":"black"},{"text":"Time:","color":"dark_aqua"},{"text":" ","color":"black"},{"score":{"name":"@s","objective":"timer_hour"},"color":"aqua"},{"text":"h,","color":"aqua"},{"score":{"name":"@s","objective":"timer_min"},"color":"aqua"},{"text":"m,","color":"aqua"},{"score":{"name":"@s","objective":"timer_sec"},"color":"aqua"},{"text":"s,","color":"aqua"},{"score":{"name":"@s","objective":"timer_tick"},"color":"aqua"},{"text":"t","color":"aqua"},{"text":"] [","color":"black"},{"text":"Jumps:","color":"dark_aqua"},{"text":" ","color":"black"},{"score":{"name":"@s","objective":"jumps"},"color":"aqua"},{"text":"]","color":"black"}]

#detect fail
#execute if block ~ ~-0.9 ~ slime_block unless block ~ ~1.5 ~ structure_void run function we:pl_fail_slime
#execute if score @s fail_slime matches 1.. unless block ~ ~-0.9 ~ slime_block run scoreboard players set @s fail_slime 0
execute if predicate we:on_ground run function we:pl_fail_detect
execute if score @s jump_detect matches 1.. run function we:pl_fail_detect
execute if score @s fail_timer matches ..0 if block ~ ~-0.1 ~ #we:fail_always positioned 49.78 18.50 15.07 unless entity @s[distance=..4.2] at @s run function we:pl_checkpoint_load
execute if score @s fail_timer matches ..0 if block ~ ~ ~ #we:fail_always2 run function we:pl_checkpoint_load




