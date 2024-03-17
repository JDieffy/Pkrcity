


#runs as player that is on ground every tick and in timer
#calc
execute store result score @s ypos_new run data get entity @s Pos[1] 10
execute run scoreboard players operation @s ypos_new -= @s ypos_old

#debug
#execute if score @s ypos_new matches ..-5 run tellraw @a {"score":{"name":"@s","objective":"ypos_new"}}

#fail none
execute if score @s ypos_new matches ..-15 unless block ~ ~0.6 ~ #we:fail_none unless block ~ ~ ~ #we:fail_none unless block ~ ~1.6 ~ #we:fail_none unless block ~ ~-0.6 ~ #we:fail_none run function we:pl_checkpoint_load

#fail only
execute if score @s ypos_new matches ..-5 if score @s jump matches 1.. if block ~ ~ ~ #we:fail_only if entity @s[tag=!ignore_fail] run function we:pl_checkpoint_fail
execute if score @s ypos_new matches ..-5 if score @s jump matches 1.. if block ~ ~0.6 ~ #we:fail_only unless block ~ ~ ~ #we:fail_only if entity @s[tag=!ignore_fail] run function we:pl_checkpoint_fail
execute if score @s ypos_new matches ..-5 if score @s jump matches 1.. if block ~ ~1.6 ~ #we:fail_only unless block ~ ~0.6 ~ #we:fail_only unless block ~ ~ ~ #we:fail_only if entity @s[tag=!ignore_fail] run function we:pl_checkpoint_fail
execute if score @s ypos_new matches ..-15 if score @s jump matches ..0 if block ~ ~ ~ #we:fail_only if entity @s[tag=!ignore_fail] run function we:pl_checkpoint_fail
execute if score @s ypos_new matches ..-15 if score @s jump matches ..0 if block ~ ~0.6 ~ #we:fail_only unless block ~ ~ ~ #we:fail_only if entity @s[tag=!ignore_fail] run function we:pl_checkpoint_fail
execute if score @s ypos_new matches ..-15 if score @s jump matches ..0 if block ~ ~1.6 ~ #we:fail_only unless block ~ ~0.6 ~ #we:fail_only unless block ~ ~ ~ #we:fail_only if entity @s[tag=!ignore_fail] run function we:pl_checkpoint_fail

#ignore fail
execute if score @s jump matches 1.. run tag @s remove ignore_fail

#reset
execute unless score @s jump_detect matches 1 run scoreboard players set @s jump 0

#calc
execute store result score @s ypos_old run data get entity @s Pos[1] 10
execute if score @s jump_detect matches 1.. run scoreboard players operation @s ypos_old -= !4 math
scoreboard players set @s jump_detect 0









