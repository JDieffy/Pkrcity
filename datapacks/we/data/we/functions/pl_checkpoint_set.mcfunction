


#run as player to set checkpoint for
#tags
tag @s add me
tag @s remove ignore_lvl23_jump

#effect
effect clear @s

#score
scoreboard players add @s level 1

#reset old
execute as @e[tag=pl_saved_pos] if score @s id = @a[tag=me,limit=1] id run kill @s

#create new
summon marker ~ ~1 ~ {Tags:["pl_saved_pos","new","pl_entity"]}
scoreboard players operation @e[tag=new,limit=1] id = @s id
tp @e[tag=new] ~ ~1 ~ ~ ~
tag @e[tag=new] remove new

#spawnpoint
spawnpoint @s ~ ~ ~ ~

#sound and particle
particle soul ~ ~ ~ 0.3 0.5 0.3 0.1 50 force @a
playsound block.respawn_anchor.charge ambient @a[distance=..10] ~ ~ ~ 1 1

#checkpoint timer
title @s actionbar ["",{"text":"[","color":"black"},{"text":"Checkpoint Reached In ","color":"dark_purple"},{"score":{"name":"@s","objective":"checkpoint_timer"},"color":"light_purple"},{"text":"t","color":"light_purple"},{"text":"]","color":"black"}]
scoreboard players set @s checkpoint_timer 0

#progress
function we:pl_set_progress

#reset
tag @s remove me






