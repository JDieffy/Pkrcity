



#runs as player that triggered ghost
execute if entity @s[tag=intimer] run playsound minecraft:entity.villager.hurt ambient @s ~ ~ ~ 10 0
execute if entity @s[tag=intimer] run tellraw @s {"text":"Unable to teleport to lobby while timer started, restart and try again!","color":"red"}

execute if entity @s[tag=!intimer] positioned 22.75 38.06 21.52 if entity @s[distance=..5,] run playsound minecraft:entity.villager.hurt ambient @s ~ ~ ~ 10 0
execute if entity @s[tag=!intimer] positioned 22.75 38.06 21.52 if entity @s[distance=..5,] run tellraw @s {"text":"Nope, you are already in the lobby!","color":"red"}

execute if entity @s[tag=!intimer] positioned 22.75 38.06 21.52 unless entity @s[distance=..5,] run playsound minecraft:item.chorus_fruit.teleport ambient @s ~ ~ ~ 10 1.5
execute if entity @s[tag=!intimer] positioned 22.75 38.06 21.52 unless entity @s[distance=..5,] run tag @s remove ingame
execute if entity @s[tag=!intimer] positioned 22.75 38.06 21.52 unless entity @s[distance=..5,] run particle minecraft:portal 22.75 39 21.52 0.5 0.7 0.5 1 200 force @a
execute if entity @s[tag=!intimer] positioned 22.75 38.06 21.52 unless entity @s[distance=..5,] run execute in minecraft:overworld run tp @s 22.75 38.06 21.52 -89.81 0.86

scoreboard players set @s Lobby 0





