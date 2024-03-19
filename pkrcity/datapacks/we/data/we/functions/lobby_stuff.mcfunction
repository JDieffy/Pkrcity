

# tag = float_stand

##  go up
execute as @e[tag=float_stand,tag=go_up] at @s run tp @s ~ ~0.1 ~
execute as @e[tag=float_stand,tag=go_up] at @s positioned ~ ~1.75 ~ as @a[distance=..0.5,gamemode=!spectator] at @e[tag=float_stand,tag=go_up] positioned ~ ~1.8 ~ run tp @s ~ ~ ~


##  go down
execute as @e[tag=float_stand,tag=go_down] at @s run tp @s ~ ~-0.1 ~
execute as @e[tag=float_stand,tag=go_down] at @s positioned ~ ~1.75 ~ as @a[distance=..0.5,gamemode=!spectator] at @e[tag=float_stand,tag=go_down] positioned ~ ~1.8 ~ run tp @s ~ ~ ~



## clear tag
#  at top
execute positioned 14.5 36.25 20.5 if entity @e[tag=float_stand,distance=..0.001] unless entity @e[tag=float_stand_go_down_time] run summon area_effect_cloud ~ ~ ~ {Tags:["float_stand_go_down_time"],Duration:81}
execute positioned 14.5 36.25 20.5 if entity @e[tag=float_stand_go_down_time,nbt={Age:80}] run tag @e[tag=float_stand,distance=..0.001] add go_down
execute positioned 14.5 36.25 20.5 run tag @e[tag=float_stand,distance=..0.001] remove go_up


#  at bottom
execute positioned 14.5 25.25 20.5 if entity @e[tag=float_stand,distance=..0.001] unless entity @e[tag=float_stand_go_up_time] run summon area_effect_cloud ~ ~ ~ {Tags:["float_stand_go_up_time"],Duration:81}
execute positioned 14.5 25.25 20.5 if entity @e[tag=float_stand_go_up_time,nbt={Age:80}] run tag @e[tag=float_stand,distance=..0.001] add go_up
execute positioned 14.5 25.25 20.5 run tag @e[tag=float_stand,distance=..0.001] remove go_down

