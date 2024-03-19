

#basic
difficulty peaceful
execute in minecraft:overworld run tp @s[tag=!intimer,gamemode=spectator] 24.07 38.06 21.69 -452.15 -1.79
execute in minecraft:overworld run tag @s[tag=!intimer,gamemode=spectator] remove ingame
execute in minecraft:overworld run tp @s[tag=!intimer,gamemode=!spectator] 98.27 3.00 80.57 -105.41 3.78
title @s times 0 50 20
title @s actionbar ["",{"text":"[","color":"red"},{"text":"Timer Paused","color":"dark_red"},{"text":"]","color":"red"}]
playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 10 2
scoreboard players add @s[tag=intimer] fail 1
particle barrier ~ ~ ~ 0 0 0 0 1 force @a
playsound minecraft:entity.blaze.hurt ambient @s ~ ~ ~ 100 0
scoreboard players set @s[tag=intimer] fail_timer 20
tag @s[tag=intimer] add get_intimer
tag @s remove intimer











