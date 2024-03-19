


experience add @s 1 points
spawnpoint @s ~ ~ ~ ~
particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 0.3 100 force @a
playsound minecraft:block.respawn_anchor.charge ambient @s ~ ~ ~ 100 1
scoreboard players add @s level 1
scoreboard players set @s title_timer 40
title @s times 0 50 20
title @s actionbar ["",{"text":"[","color":"yellow"},{"text":"Checkpoint Reached","color":"gold"},{"text":"]","color":"yellow"}]

