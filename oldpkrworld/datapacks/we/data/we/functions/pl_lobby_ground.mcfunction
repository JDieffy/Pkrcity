



#runs as player that touch ground in intro
tag @s add ignore_upt
clear @s
tag @s remove ignore_intro_sound
scoreboard players set @s elytra 0
gamemode spectator @s
gamemode adventure @s

particle block_marker barrier ~ ~0.5 ~ 0 0 0 0 1 force @a
playsound minecraft:we_effect.bone_crack ambient @s ~ ~ ~ 10 1
tellraw @s ["",{"text":"\uE019 ","color":"white"},{"selector":"@s","color":"dark_gray"},{"text":" crashed","color":"dark_gray"}]



