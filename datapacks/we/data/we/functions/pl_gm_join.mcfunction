



#runs when player joined world
#message
execute as @a unless score @s leave_world matches 1 run tellraw @s {"translate":"You dont have resourcepack! [Click for download]","color":"red","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/q4ylfu2ebauw971/Whirlpool_Parkour_Texture.zip/file"}}
execute as @a unless score @s leave_world matches 1 run tellraw @s ["",{"text":"Welcome ","color":"#60C89E"},{"selector":"@s","color":"#60C89E"}]
execute as @a unless score @s leave_world matches 1 at @s run playsound minecraft:we_effect.battle_start ambient @s ~ ~ ~ 10 2

#if in win
execute as @a unless score @s leave_world matches 1 if score @s win_timer matches 1..6 run function we:pl_gm_exit

#reset
scoreboard players set @a leave_world 1
schedule clear we:pl_gm_join




