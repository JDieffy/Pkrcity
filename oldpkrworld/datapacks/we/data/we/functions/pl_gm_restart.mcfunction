


#run as player to restart from checkpoint 1 for
#if was in ghost
tellraw @s[tag=inghost] {"text":"Exited creative mode","color":"dark_purple"}

#kill everything with same id
tag @s add me
execute as @e[type=!player] if score @s id = @a[tag=me,limit=1] id run kill @s
tag @s remove me

#team
team join lobby @s

#spawnpoint
spawnpoint @s 58 6 -38 -49

#effect
effect clear @s

#tags
tag @s remove timeron
tag @s add clicked
tag @s remove inghost
tag @s remove ignore_fail
tag @s remove ignore_lvl23_jump

#scores
scoreboard players add @s item_sl_slot_sub 0
scoreboard players add @s item_sl_slot 0
scoreboard players set @s timer_hour 0
scoreboard players set @s timer_tick 0
scoreboard players set @s timer_sec 0
scoreboard players set @s timer_min 0
scoreboard players set @s total_timer 0
scoreboard players set @s fail_timer 0
scoreboard players set @s checkpoint_timer 0
scoreboard players set @s win_timer 0
scoreboard players set @s jump 0
scoreboard players set @s level 0
scoreboard players set @s attempt_score 0
scoreboard players add @s attempts 1

#xp
experience set @s 0 levels
experience set @s 0 points

#gamemode
gamemode spectator @s
gamemode adventure @s

#attribute
attribute @s generic.armor base set 1

#actionbar
title @s actionbar {"text":""}

#tp
execute in minecraft:overworld run tp @s 59.16 6.00 -37.45 -767.83 9.30

#sound and particles and text
execute at @s run playsound minecraft:block.respawn_anchor.deplete ambient @a[distance=..10] ~ ~ ~ 1 1
execute at @s run particle minecraft:damage_indicator ~ ~1 ~ 0.3 0.5 0.3 0 20 force @a
tellraw @s ["",{"text":"Restarted!","color":"dark_red"},{"text":" Attempt: ","color":"red"},{"score":{"name":"@s","objective":"attempts"},"color":"red","underlined": true}]

#progress
function we:pl_set_progress




