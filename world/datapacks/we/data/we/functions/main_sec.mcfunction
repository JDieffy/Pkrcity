




#runs as nothing every sec
#delays
execute if score !lvl3 math matches 1.. run scoreboard players remove !lvl3 math 1

#important attributes
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 1
effect give @a instant_health 2 1 true
effect give @a saturation 2 1 true

#for lvl11
execute if score !carts math matches 1.. run function we:lvl11_carts
execute unless entity @a[scores={level=10..12}] if entity @e[type=furnace_minecart,tag=lvl11_carts] run function we:lvl11_carts_reset 

#reset
scoreboard players set !sec_tick game 1





