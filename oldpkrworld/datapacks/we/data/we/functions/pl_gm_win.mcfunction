




#run as player that win game
#armor
scoreboard players set @s level 25
function we:pl_set_progress

#score
scoreboard players add @s times_completed 1
scoreboard players set @s win_timer 1

#tags
tag @s add me01
tag @s remove timeron
tag @s remove ignore_lvl23_jump

#effect
effect give @s levitation 100 1 true
effect give @s levitation 1 20 true

#text
tellraw @s {"translate":"You dont have resourcepack! [Click for download]","color":"red","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/q4ylfu2ebauw971/Whirlpool_Parkour_Texture.zip/file"}}
tellraw @s {"text":"\n"}
execute if score @s times_completed matches ..1 run tellraw @a[tag=!me01] ["",{"selector":"@s","color":"#906C6C"},{"text":" Completed the parkour\nfor the ","color":"#7C7C7C"},{"score":{"name":"@s","objective":"times_completed"},"color":"#906C6C"},{"text":"st ","color":"#906C6C"},{"text":"time with stats","color":"#7C7C7C"},{"text":"\n"},{"text":"[","color":"black"},{"text":"Time: ","color":"gray"},{"score":{"name":"@s","objective":"timer_hour"},"color":"gray"},{"text":"h,","color":"gray"},{"score":{"name":"@s","objective":"timer_min"},"color":"gray"},{"text":"m,","color":"gray"},{"score":{"name":"@s","objective":"timer_sec"},"color":"gray"},{"text":"s,","color":"gray"},{"score":{"name":"@s","objective":"timer_tick"},"color":"gray"},{"text":"t","color":"gray"},{"text":"]\n[","color":"black"},{"text":"Jumps: ","color":"gray"},{"score":{"name":"@s","objective":"jumps"},"color":"gray"},{"text":"] [","color":"black"},{"text":"Fails: ","color":"gray"},{"score":{"name":"@s","objective":"fails"},"color":"gray"},{"text":"]","color":"black"}]
execute if score @s times_completed matches 2 run tellraw @a[tag=!me01] ["",{"selector":"@s","color":"#906C6C"},{"text":" Completed the parkour\nfor the ","color":"#7C7C7C"},{"score":{"name":"@s","objective":"times_completed"},"color":"#906C6C"},{"text":"nd ","color":"#906C6C"},{"text":"time with stats","color":"#7C7C7C"},{"text":"\n"},{"text":"[","color":"black"},{"text":"Time: ","color":"gray"},{"score":{"name":"@s","objective":"timer_hour"},"color":"gray"},{"text":"h,","color":"gray"},{"score":{"name":"@s","objective":"timer_min"},"color":"gray"},{"text":"m,","color":"gray"},{"score":{"name":"@s","objective":"timer_sec"},"color":"gray"},{"text":"s,","color":"gray"},{"score":{"name":"@s","objective":"timer_tick"},"color":"gray"},{"text":"t","color":"gray"},{"text":"]\n[","color":"black"},{"text":"Jumps: ","color":"gray"},{"score":{"name":"@s","objective":"jumps"},"color":"gray"},{"text":"] [","color":"black"},{"text":"Fails: ","color":"gray"},{"score":{"name":"@s","objective":"fails"},"color":"gray"},{"text":"]","color":"black"}]
execute if score @s times_completed matches 3 run tellraw @a[tag=!me01] ["",{"selector":"@s","color":"#906C6C"},{"text":" Completed the parkour\nfor the ","color":"#7C7C7C"},{"score":{"name":"@s","objective":"times_completed"},"color":"#906C6C"},{"text":"rd ","color":"#906C6C"},{"text":"time with stats","color":"#7C7C7C"},{"text":"\n"},{"text":"[","color":"black"},{"text":"Time: ","color":"gray"},{"score":{"name":"@s","objective":"timer_hour"},"color":"gray"},{"text":"h,","color":"gray"},{"score":{"name":"@s","objective":"timer_min"},"color":"gray"},{"text":"m,","color":"gray"},{"score":{"name":"@s","objective":"timer_sec"},"color":"gray"},{"text":"s,","color":"gray"},{"score":{"name":"@s","objective":"timer_tick"},"color":"gray"},{"text":"t","color":"gray"},{"text":"]\n[","color":"black"},{"text":"Jumps: ","color":"gray"},{"score":{"name":"@s","objective":"jumps"},"color":"gray"},{"text":"] [","color":"black"},{"text":"Fails: ","color":"gray"},{"score":{"name":"@s","objective":"fails"},"color":"gray"},{"text":"]","color":"black"}]
execute if score @s times_completed matches 4.. run tellraw @a[tag=!me01] ["",{"selector":"@s","color":"#906C6C"},{"text":" Completed the parkour\nfor the ","color":"#7C7C7C"},{"score":{"name":"@s","objective":"times_completed"},"color":"#906C6C"},{"text":"th ","color":"#906C6C"},{"text":"time with stats","color":"#7C7C7C"},{"text":"\n"},{"text":"[","color":"black"},{"text":"Time: ","color":"gray"},{"score":{"name":"@s","objective":"timer_hour"},"color":"gray"},{"text":"h,","color":"gray"},{"score":{"name":"@s","objective":"timer_min"},"color":"gray"},{"text":"m,","color":"gray"},{"score":{"name":"@s","objective":"timer_sec"},"color":"gray"},{"text":"s,","color":"gray"},{"score":{"name":"@s","objective":"timer_tick"},"color":"gray"},{"text":"t","color":"gray"},{"text":"]\n[","color":"black"},{"text":"Jumps: ","color":"gray"},{"score":{"name":"@s","objective":"jumps"},"color":"gray"},{"text":"] [","color":"black"},{"text":"Fails: ","color":"gray"},{"score":{"name":"@s","objective":"fails"},"color":"gray"},{"text":"]","color":"black"}]
title @s times 0 0 30
title @s subtitle {"text":"Congratulations","color":"dark_green"}
title @s title {"text":"\uE003","color":"green"}

#sound and particle
playsound minecraft:we_effect.game_start ambient @s ~ ~ ~ 10 1
particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 1 300 force @s

#schedule timer function
schedule function we:pl_gm_win_sub 80t replace

#reset
tag @s remove me01



