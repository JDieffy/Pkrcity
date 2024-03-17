


#run as player to set exit parkour for
#xp
experience set @s 0 levels
experience set @s 0 points

#tp
execute in minecraft:overworld run tp @s 59.16 6.00 -37.45 -47.83 9.30

#tags
tag @s remove timeron
tag @s remove inghost
tag @s remove ignore_fail
tag @s remove ignore_lvl23_jump
tag @s remove ignore_intro_sound
tag @s remove ingame

#gamemode
gamemode adventure @s

#effect
effect clear @s

#kill everything with same id
execute as @e[type=!player] if score @s id = @a[tag=me,limit=1] id run kill @s

#attribute
attribute @s generic.armor base set 1

#sound
playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~ 10 1

#team
team join lobby @s

#actionbar
title @s actionbar {"text":""}

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
scoreboard players set @s level 0
scoreboard players set @s jump 0
scoreboard players set @s attempts 0
scoreboard players set @s attempt_score 0
scoreboard players set @s elytra 0

#progress
function we:pl_set_progress

#upt inventory
tag @s add ignore_upt
clear @s





