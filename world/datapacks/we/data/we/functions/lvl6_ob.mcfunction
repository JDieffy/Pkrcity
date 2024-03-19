






execute as @e[type=armor_stand,tag=new] at @s run tp @s ^ ^ ^-2
execute as @e[type=armor_stand,tag=new,tag=fall_longer] at @s run tp @s ~1 ~ ~
tag @e[type=armor_stand,tag=new] remove new

execute as @e[type=armor_stand,tag=lvl6_armor_stand] at @s if block ~ ~1.5 ~ lava run tp @s ~ ~0.1 ~
#execute as @e[type=armor_stand,tag=lvl6_armor_stand] at @s if entity @a[distance=..1,tag=timeron,gamemode=adventure] run tag @s add lvl6_okm
execute as @e[type=armor_stand,tag=lvl6_armor_stand] at @s unless block ~ ~1.5 ~ lava unless block ~ ~1.4 ~ air run tp @s ^ ^ ^0.05
#execute as @e[type=armor_stand,tag=lvl6_armor_stand] at @s unless block ~ ~-0.9 ~ lava unless block ~ ~ ~ lava run tp @s ~ ~-0.1 ~
#execute positioned 116.38 30.00 -12.61 if entity @a[distance=..6,tag=timeron,gamemode=adventure] at @e[type=armor_stand,tag=lvl6_armor_stand] unless block ~ ~1.5 ~ lava unless block ~ ~0.5 ~ lava run kill @e[tag=lvl6_armor_stand]
#execute positioned 116.38 30.00 -12.61 if entity @a[distance=..6,tag=timeron,gamemode=adventure] as @e[type=armor_stand,tag=lvl6_armor_stand,tag=fall_longer] at @s if entity @s[y=0,dy=26.5] run kill @e[tag=lvl6_armor_stand]



