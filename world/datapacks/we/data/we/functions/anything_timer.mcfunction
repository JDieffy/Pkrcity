

scoreboard players set @s attempts 0
title @s times 0 50 20
execute if score @s anything_timer matches 1000 run playsound minecraft:item.chorus_fruit.teleport ambient @s ~ ~ ~ 100 0
execute if score @s anything_timer matches 1000 run particle witch 99.44 4.00 79.55 0.3 0.5 0.3 0.3 100 force @a
execute if score @s anything_timer matches 1000 run title @s title {"text":"P"}
execute if score @s anything_timer matches 990 run title @s title {"text":"Pa"}
execute if score @s anything_timer matches 980 run title @s title {"text":"Par"}
execute if score @s anything_timer matches 970 run title @s title {"text":"Park"}
execute if score @s anything_timer matches 960 run title @s title {"text":"Parko"}
execute if score @s anything_timer matches 950 run title @s title {"text":"Parkou"}
execute if score @s anything_timer matches 940 run title @s title {"text":"Parkour"}
execute if score @s anything_timer matches 930 run title @s title {"text":"Parkour C"}
execute if score @s anything_timer matches 920 run title @s title {"text":"Parkour Ci"}
execute if score @s anything_timer matches 910 run title @s title {"text":"Parkour Cit"}
execute if score @s anything_timer matches 900 run title @s title {"text":"Parkour City"}

execute if score @s anything_timer matches 890 run playsound minecraft:entity.firework_rocket.twinkle ambient @a ~ ~ ~ 1 1
execute if score @s anything_timer matches 890 run particle minecraft:totem_of_undying ~ ~2 ~ 0.3 1 0.3 0.3 200 force @a
execute if score @s anything_timer matches 890 run title @s title ["",{"text":"Parkour ","color":"gold"},{"text":"City","color":"dark_aqua"}]

execute if score @s anything_timer matches 810 run playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 10 2
execute if score @s anything_timer matches 810 run title @s title {"text":""}
execute if score @s anything_timer matches 810 run scoreboard players set @s anything_timer 0

scoreboard players remove @s anything_timer 2
