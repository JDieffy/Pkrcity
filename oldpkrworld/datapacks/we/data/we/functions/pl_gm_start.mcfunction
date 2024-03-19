


#run as player to set start timer and parkour
#xp
experience set @s 0 levels
experience set @s 0 points

#tags
tag @s add timeron
tag @s add me
tag @s remove ignore_fail

#kill everything with same id
execute as @e[type=!player] if score @s id = @a[tag=me,limit=1] id run kill @s

#reset old
execute as @e[tag=pl_saved_pos] if score @s id = @a[tag=me,limit=1] id run kill @s

#team
team join pl @s

#gamemode
gamemode adventure @s

#effect
effect clear @s

#scores
scoreboard players set @s timer_hour 0
scoreboard players set @s timer_tick 0
scoreboard players set @s timer_sec 0
scoreboard players set @s timer_min 0
scoreboard players set @s jumps 0
scoreboard players set @s fails 0
scoreboard players set @s total_timer 0
scoreboard players set @s checkpoint_timer -10
scoreboard players set @s fail_timer 0
scoreboard players set @s level 1
scoreboard players set @s jump 0
scoreboard players set @s attempt_score 0
scoreboard players add @s item_sl_slot_sub 0
scoreboard players add @s item_sl_slot 0

execute unless score @s attempts matches 2..99999999 run scoreboard players set @s attempts 1

#set best scores
execute unless score @s b_timer_tick matches 0..99999999 run scoreboard players set @s b_timer_tick 99999999
execute unless score @s b_timer_hour matches 0..99999999 run scoreboard players set @s b_timer_hour 99999999
execute unless score @s b_timer_min matches 0..99999999 run scoreboard players set @s b_timer_min 99999999
execute unless score @s b_timer_sec matches 0..99999999 run scoreboard players set @s b_timer_sec 99999999
execute unless score @s b_jumps matches 0..99999999 run scoreboard players set @s b_jumps 99999999
execute unless score @s b_fails matches 0..99999999 run scoreboard players set @s b_fails 99999999
execute unless score @s b_total_timer matches 0..99999999 run scoreboard players set @s b_total_timer 99999999
execute unless score @s top_list matches 1..9999999 run scoreboard players set @s top_list 0

#reset fail detect
execute store result score @s ypos_new run data get entity @s Pos[1] 10
execute store result score @s ypos_old run data get entity @s Pos[1] 10

#unique id
scoreboard players add !nextid game 1
scoreboard players operation @s id = !nextid game

#reset old checkpoint
execute as @e[tag=pl_saved_pos] if score @s id = @a[tag=me,limit=1] id run kill @s

#create new checkpoint
summon marker ~ ~1 ~ {Tags:["pl_saved_pos","new","pl_entity"]}
scoreboard players operation @e[tag=new,limit=1] id = @s id
tp @e[tag=new] ~ ~1 ~ ~ ~
tag @e[tag=new] remove new

#set display
scoreboard objectives setdisplay sidebar top_list
scoreboard objectives setdisplay list level
scoreboard objectives setdisplay belowName total_timer

#gamerules
gamerule showDeathMessages false
gamerule sendCommandFeedback false
difficulty easy
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doPatrolSpawning false
gamerule randomTickSpeed 0
gamerule mobGriefing false
gamerule doDaylightCycle false
time set night
gamerule doWeatherCycle false
weather clear
gamerule disableRaids true

#sound and particle and text
execute at @s run playsound minecraft:item.trident.thunder ambient @a[distance=..10] ~ ~ ~ 1 2
execute at @s run particle minecraft:nautilus ~ ~1.5 ~ 0.3 0.5 0.3 0.3 100 force @a
tellraw @s {"translate":"You dont have resourcepack! [Click for download]","color":"red","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/q4ylfu2ebauw971/Whirlpool_Parkour_Texture.zip/file"}}
tellraw @s {"text":"Timer Started...","color":"dark_green"}

#attribute
attribute @s generic.armor base set 1

#progress
function we:pl_set_progress

#actionbar
title @s actionbar {"text":"Timer Started","color":"dark_green"}

#reset
tag @s remove me






