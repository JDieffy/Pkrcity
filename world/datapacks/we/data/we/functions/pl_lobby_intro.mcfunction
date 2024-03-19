



#runs every tick as player in intro
#gamemode
gamemode adventure @s

#attributes
attribute @s generic.armor base set 1

#if dont have elytra
execute unless predicate we:if_elyta run advancement grant @s only we:items_upt

#text
execute unless score @s elytra matches 1..9999 run title @s times 0 1 20
execute unless score @s elytra matches 1..9999 run title @s title ["",{"text":"Welcome ","color":"gold"},{"selector":"@s","underlined":true,"color":"gold"}]
execute unless score @s elytra matches 1..9999 run title @s subtitle ["",{"text":"Press ","color":"yellow"},{"keybind":"key.jump","color":"yellow"},{"text":" to start","color":"yellow"}]
execute unless score @s elytra matches 1..9999 run title @s actionbar ["",{"text":"Map created by ","color":"gray"},{"text":"Zombie1111","underlined":true,"color":"gray"},{"text":" and ","color":"gray"},{"text":"__Sac","underlined":true,"color":"gray"}]

#score
execute if score @s elytra matches 1000.. run scoreboard players set @s elytra 1

#effect
execute unless score @s elytra matches 1..9999 run effect give @s blindness 2 0 true
execute unless score @s elytra matches 1..9999 run effect give @s invisibility 2 0 true

#when exit tp
execute if score @s elytra matches 1.. if entity @s[tag=!ignore_intro_sound] run function we:pl_lobby_space

#tp
execute unless score @s elytra matches 1..9999 in minecraft:overworld run tp @s 86.65 24.44 -66.07 -243.98 36.08

#when flying
execute if score @s elytra matches 1.. if predicate we:on_ground run function we:pl_lobby_ground
execute if score @s elytra matches 1.. if block ~ ~ ~ lava run tp @s 64.62 15.00 -71.37 134.83 8.22

execute if score @s elytra matches 1.. if block ~ ~-0.9 ~ polished_deepslate run function we:pl_lobby_set
execute if score @s elytra matches 1.. if block ~ ~-1.9 ~ polished_deepslate run function we:pl_lobby_set
execute if score @s elytra matches 1.. if block ~ ~-2.9 ~ polished_deepslate run function we:pl_lobby_set



