


#door
setblock 18 25 31 minecraft:redstone_torch[lit=true]

#set stuff
scoreboard players add @s top_list 0
scoreboard players add @s times_win 1
tag @s remove intimer
tag @s add this_player
scoreboard players set @s win_timer 1
playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 10 1
title @s title {"text":"Parkour Completed","color":"dark_green"}
execute if score @s times_win matches ..1 run tellraw @a[tag=!this_player] ["",{"text":"Congratulations, ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" reached the end for ","color":"gold"},{"score":{"name":"@s","objective":"times_win"},"color":"gold"},{"text":"st time with stats!","color":"gold"},{"text":"\n"},{"text":"[Jumps: ","color":"dark_green"},{"score":{"name":"@s","objective":"jump"},"color":"dark_green"},{"text":"] ","color":"dark_green"},{"text":"[Time: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_h"},"color":"dark_aqua"},{"text":"h,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_m"},"color":"dark_aqua"},{"text":"m,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_s"},"color":"dark_aqua"},{"text":"s,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_t"},"color":"dark_aqua"},{"text":"t]","color":"dark_aqua"},{"text":" [Fails: ","color":"dark_purple"},{"score":{"name":"@s","objective":"fail"},"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
execute if score @s times_win matches 2 run tellraw @a[tag=!this_player] ["",{"text":"Congratulations, ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" reached the end for ","color":"gold"},{"score":{"name":"@s","objective":"times_win"},"color":"gold"},{"text":"nd time with stats!","color":"gold"},{"text":"\n"},{"text":"[Jumps: ","color":"dark_green"},{"score":{"name":"@s","objective":"jump"},"color":"dark_green"},{"text":"] ","color":"dark_green"},{"text":"[Time: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_h"},"color":"dark_aqua"},{"text":"h,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_m"},"color":"dark_aqua"},{"text":"m,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_s"},"color":"dark_aqua"},{"text":"s,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_t"},"color":"dark_aqua"},{"text":"t]","color":"dark_aqua"},{"text":" [Fails: ","color":"dark_purple"},{"score":{"name":"@s","objective":"fail"},"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
execute if score @s times_win matches 3 run tellraw @a[tag=!this_player] ["",{"text":"Congratulations, ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" reached the end for ","color":"gold"},{"score":{"name":"@s","objective":"times_win"},"color":"gold"},{"text":"rd time with stats!","color":"gold"},{"text":"\n"},{"text":"[Jumps: ","color":"dark_green"},{"score":{"name":"@s","objective":"jump"},"color":"dark_green"},{"text":"] ","color":"dark_green"},{"text":"[Time: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_h"},"color":"dark_aqua"},{"text":"h,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_m"},"color":"dark_aqua"},{"text":"m,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_s"},"color":"dark_aqua"},{"text":"s,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_t"},"color":"dark_aqua"},{"text":"t]","color":"dark_aqua"},{"text":" [Fails: ","color":"dark_purple"},{"score":{"name":"@s","objective":"fail"},"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
execute if score @s times_win matches 4.. run tellraw @a[tag=!this_player] ["",{"text":"Congratulations, ","color":"gold"},{"selector":"@s","color":"yellow"},{"text":" reached the end for ","color":"gold"},{"score":{"name":"@s","objective":"times_win"},"color":"gold"},{"text":"th time with stats!","color":"gold"},{"text":"\n"},{"text":"[Jumps: ","color":"dark_green"},{"score":{"name":"@s","objective":"jump"},"color":"dark_green"},{"text":"] ","color":"dark_green"},{"text":"[Time: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_h"},"color":"dark_aqua"},{"text":"h,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_m"},"color":"dark_aqua"},{"text":"m,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_s"},"color":"dark_aqua"},{"text":"s,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_t"},"color":"dark_aqua"},{"text":"t]","color":"dark_aqua"},{"text":" [Fails: ","color":"dark_purple"},{"score":{"name":"@s","objective":"fail"},"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
tag @s remove this_player
effect give @s levitation 1 20 true
clear @s

#add 0 to all best_<something>
scoreboard players add @s best_rank 0
scoreboard players add @s best_tick 0
scoreboard players add @s best_fail 0
scoreboard players add @s best_jump 0




