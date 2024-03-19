



#runs as player that enter or exit Creative mode
#detect if exit
execute if entity @s[tag=inghost] run tag @s add ghost_exit
function we:pl_set_progress

#enter
#gamemode
execute if entity @s[tag=!inghost] run gamemode creative @s
execute if entity @s[tag=!inghost] run team join ghost @s

#summon
execute if entity @s[tag=!inghost] run summon marker ~ ~ ~ {Tags:["new","en_ghost"]}
execute if entity @s[tag=!inghost] run tp @e[tag=new] ~ ~ ~ ~ ~
execute if entity @s[tag=!inghost] run scoreboard players operation @e[tag=new] id = @s id
execute if entity @s[tag=!inghost] run tag @e[tag=new] remove new

#tags
execute if entity @s[tag=!inghost] run tag @s remove ignore_music
execute if entity @s[tag=!inghost] run stopsound @s * we_music.lobby
execute if entity @s[tag=!inghost] run tag @s add inghost

#exit
#gamemode
execute if entity @s[tag=ghost_exit] run gamemode adventure @s
execute if entity @s[tag=ghost_exit,tag=timeron] run team join pl @s
execute if entity @s[tag=ghost_exit,tag=!timeron] run team join lobby @s

#tp
execute if entity @s[tag=ghost_exit] run tag @s add me014
execute if entity @s[tag=ghost_exit] as @e[tag=en_ghost] if score @s id = @a[tag=me014,limit=1] id at @s run tp @a[tag=me014,limit=1] ~ ~ ~ ~ ~
execute if entity @s[tag=ghost_exit] as @e[tag=en_ghost] if score @s id = @a[tag=me014,limit=1] id at @s run particle dust 1 1 1 10
execute if entity @s[tag=ghost_exit] as @e[tag=en_ghost] if score @s id = @a[tag=me014,limit=1] id run kill @s

#remove tag
execute if entity @s[tag=ghost_exit] run tag @s remove inghost

#sound, particle and text
tellraw @s[tag=ghost_exit] {"text":"Exited creative mode","color":"dark_purple"}
tellraw @s[tag=!ghost_exit] {"text":"Entered creative mode","color":"dark_purple"}
execute at @s run particle minecraft:ash ~ ~1.3 ~ 0.5 0.7 0.5 0 100 force @s
execute at @s run playsound minecraft:we_effect.respawn ambient @a[distance=..5] ~ ~ ~ 10 2

#actionbar
title @s actionbar {"text":""}

#reset
scoreboard players set @s jump 0
tag @s remove me014
tag @s remove ghost_exit
tag @s add clicked




