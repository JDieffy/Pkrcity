





execute as @e[type=armor_stand,tag=lvl13_block,tag=!lvl13_d2] at @s run tp @s ~-0.06 ~ ~
execute as @e[type=armor_stand,tag=lvl13_block,tag=!lvl13_d2] at @s if block ~-0.4 ~ ~ sticky_piston run particle minecraft:item redstone ~-0.4 ~1 ~ 0.3 0.7 0.7 0.2 30 force @a
execute as @e[type=armor_stand,tag=lvl13_block,tag=!lvl13_d2] at @s if block ~-0.4 ~ ~ sticky_piston run playsound minecraft:we_effect.small_pickup ambient @a[distance=..15] ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=lvl13_block,tag=!lvl13_d2] at @s if block ~-0.4 ~ ~ sticky_piston run tag @s add lvl13_d2
execute as @e[type=armor_stand,tag=lvl13_block,tag=lvl13_d2] at @s run tp @s ~0.06 ~ ~
execute as @e[type=armor_stand,tag=lvl13_block,tag=lvl13_d2] at @s if block ~0.4 ~ ~ sticky_piston run particle minecraft:item redstone ~0.4 ~1 ~ 0.3 0.7 0.7 0.2 30 force @a
execute as @e[type=armor_stand,tag=lvl13_block,tag=lvl13_d2] at @s if block ~0.4 ~ ~ sticky_piston run playsound minecraft:we_effect.small_pickup ambient @a[distance=..15] ~ ~ ~ 1 1
execute as @e[type=armor_stand,tag=lvl13_block,tag=lvl13_d2] at @s if block ~0.4 ~ ~ sticky_piston run tag @s remove lvl13_d2

execute unless entity @a[scores={level=13}] run function we:lvl13_reset

execute as @a[scores={level=13},gamemode=adventure,tag=timeron] if predicate we:on_ground at @s positioned ~ ~-0.5 ~ if entity @e[distance=..1,tag=lvl13_block,type=armor_stand] run function we:pl_checkpoint_load








