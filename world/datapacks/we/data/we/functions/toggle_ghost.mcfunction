



execute if entity @s[gamemode=spectator] run playsound minecraft:entity.wandering_trader.reappeared ambient @s ~ ~ ~ 100 1
execute if entity @s[gamemode=spectator] run tag @s add ignore3892
execute if entity @s[gamemode=spectator] run function we:set_failed
execute if entity @s[gamemode=spectator] run gamemode adventure @s

execute if entity @s[gamemode=!spectator,tag=!ignore3892] run playsound minecraft:entity.wandering_trader.disappeared ambient @s ~ ~ ~ 100 2
execute if entity @s[gamemode=!spectator,tag=!ignore3892] run gamemode spectator @s

tag @s remove ignore3892
scoreboard players set @s Ghost 0





