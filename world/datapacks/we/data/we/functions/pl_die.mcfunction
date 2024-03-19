



#runs as player that died
#set progress
function we:pl_set_progress

#if in game
execute if entity @s[tag=timeron] run function we:pl_checkpoint_load

#text
tellraw @s ["",{"text":"\uE019 ","color":"white"},{"selector":"@s","color":"dark_gray"},{"text":" fell from a high place","color":"dark_gray"}]
particle block_marker barrier ~ ~0.5 ~ 0 0 0 0 1 force @a
playsound minecraft:we_effect.bone_crack ambient @s ~ ~ ~ 10 1

#reset
scoreboard players set @s death_counter 0



