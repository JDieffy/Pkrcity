


#start timer
tag @s add intimer
title @s clear
difficulty peaceful

#reset stats
scoreboard players set @s tick 0
scoreboard players set @s time_t 0
scoreboard players set @s time_s 0
scoreboard players set @s time_m 0
scoreboard players set @s time_h 0
scoreboard players set @s jump 0
scoreboard players set @s fail 0
scoreboard players set @s level 1
scoreboard players set @s fail_timer 0
scoreboard players set @s title_timer 0

#xp
experience set @s 8 levels
experience set @s 0 points

#set best_jump
execute if score @s times_win matches ..0 run scoreboard players set @s best_tick 2147483647 
execute if score @s times_win matches ..0 run scoreboard players set @s best_jump 2147483647 
execute if score @s times_win matches ..0 run scoreboard players set @s best_fail 2147483647 
execute if score @s times_win matches ..0 run scoreboard players set @s best_rank 0

#just for look
playsound minecraft:item.trident.thunder ambient @a ~ ~ ~ 1 2
particle minecraft:glow_squid_ink ~ ~1 ~ 0.6 0.6 0.6 0.3 20 force @a
tellraw @s ["",{"text":"Timer started,","color":"dark_green"},{"text":" good luck!","color":"green"}]




