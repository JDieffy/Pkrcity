

execute if entity @s[nbt={ActiveEffects:[{Id:8b}]}] run function we:jump_boost
execute if entity @s[tag=intimer] run scoreboard players add @s jump 1
scoreboard players set @s jumped 0


