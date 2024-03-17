


playsound minecraft:entity.generic.swim ambient @s ~ ~ ~ 10 1
execute at @s run particle minecraft:falling_water ~ ~1 ~ 0.6 0.6 0.6 0 20 force @a
stopsound @s * we_music.lobby
tag @s remove ignore_music


