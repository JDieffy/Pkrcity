



#detect fail
execute if entity @s[y=0,dy=2,tag=intimer] run function we:set_failed
execute if block ~ ~ ~ fire run function we:set_failed
execute if block ~ ~-0.1 ~ magma_block run function we:set_failed
execute if block ~ ~-0.1 ~ barrier run function we:set_failed
execute if score @s level matches 2 if block ~0.3 ~-0.1 ~ barrier run function we:set_failed

#if player previous ground pos is higher than current ground pos, if player has been in air for X time, if player is on fail block, trigger the fail
execute store result score @s pos_now run data get entity @s Pos[1] 100
execute if entity @s[nbt={OnGround:1b}] store result score @s pos_prew run data get entity @s Pos[1] 100
execute if entity @s[nbt=!{OnGround:1b}] if score @s air_time matches ..9 run scoreboard players add @s air_time 1 
execute if entity @s[nbt={OnGround:1b}] if score @s air_time matches 1.. run scoreboard players set @s air_time 0 

#special fail
execute if score @s pos_now < @s pos_prew if score @s air_time matches 6.. run function we:detect_fail
execute if entity @s[tag=!keep_tags] run tag @s remove already_failed_28
tag @s remove keep_tags

#start timer
execute positioned 106.87 4.00 78.60 if entity @s[distance=0..2,tag=!intimer] run function we:start_timer 

#intro
execute if score @s anything_timer matches 1.. run function we:anything_timer

#checkpoints
execute if score @s level matches 1 positioned 119.99 12.00 88.03 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 2 positioned 99.50 18.00 134.53 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 3 positioned 117.48 28.00 119.55 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 4 positioned 102.45 27.06 72.45 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 5 positioned 100.44 37.00 140.60 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 6 positioned 110.98 57.06 166.41 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 7 positioned 164.51 47.00 153.51 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 8 positioned 142.75 57.00 172.03 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 9 positioned 161.56 69.00 156.58 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 10 positioned 148.48 4.00 121.51 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 11 positioned 163.67 17.00 128.93 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 12 positioned 164.19 59.00 119.25 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 13 positioned 149.45 47.00 83.03 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 14 positioned 158.58 11.00 71.00 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 15 positioned 60.05 9.00 34.69 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 16 positioned 61.59 30.00 37.42 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 17 positioned 31.96 46.13 20.94 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 18 positioned 23.47 41.50 83.94 if entity @s[distance=0..4] run function we:get_checkpoint
execute if score @s level matches 19 positioned 31.95 56.13 87.99 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 20 positioned 52.03 48.00 65.00 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 21 positioned 76.96 47.00 75.02 if entity @s[distance=0..3] run function we:get_checkpoint
execute if score @s level matches 22 positioned 59.04 56.00 71.83 if entity @s[distance=0..3] run function we:get_checkpoint
