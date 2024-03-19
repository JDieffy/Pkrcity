


#run as player to load checkpoint for
#xp
experience set @s 0 levels
experience set @s 0 points

#if was in ghost
tellraw @s[tag=inghost] {"text":"Exited creative mode","color":"dark_purple"}

#tags
tag @s add me
tag @s add clicked
tag @s remove inghost
tag @s remove ignore_fail
tag @s remove ignore_lvl23_jump

#team
team join pl @s

#if no checkpoint pos
execute as @e[tag=pl_saved_pos] if score @s id = @a[tag=me,limit=1] id run tag @s add yes
execute unless entity @e[tag=yes] run function we:pl_gm_restart

#score
scoreboard players set @s win_timer 0
scoreboard players set @s fail_timer 1
scoreboard players set @s jump 0
scoreboard players add @s fails 1

#sound particle and text
title @s times 0 0 20
title @s actionbar {"text":"Timer Paused!","color":"dark_purple"}
title @s title {"text":"\uE001","color":"black"}
particle block_marker barrier ~ ~0.5 ~ 0 0 0 0 1 force @a 
playsound minecraft:block.respawn_anchor.set_spawn ambient @a[distance=..5] ~ ~ ~ 1 2

#spectate
execute if entity @e[tag=yes] run gamemode spectator @s
execute if entity @e[tag=yes] run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["spec_stand","pl_entity","new"]}
execute as @e[type=armor_stand,tag=new] run tp @s ~ ~ ~ ~ ~
scoreboard players operation @e[type=armor_stand,tag=new,limit=1] id = @s id
spectate @e[type=armor_stand,tag=new,limit=1] @s
execute as @e[type=armor_stand,tag=new] run tag @s remove new

#progress
function we:pl_set_progress

#reset
tag @e[tag=yes] remove yes
tag @s remove me






