





#teleport player to checkpoint
execute if score @s level matches ..1 run tp @s 100.97 3.00 79.14 -96.37 5.67
execute if score @s level matches 2 run execute in minecraft:overworld run tp @s 120.19 12.00 87.50 -3.67 33.36
execute if score @s level matches 3 run tp @s 99.94 18.00 134.76 144.89 18.04
execute if score @s level matches 4 run tp @s 118.82 27.50 118.67 908.35 15.07
execute if score @s level matches 5 run tp @s 100.95 27.00 71.65 -426.18 17.35
execute if score @s level matches 6 run tp @s 99.72 37.00 141.21 -703.79 32.09
execute if score @s level matches 7 run tp @s 111.44 57.06 165.97 -334.82 14.22
execute if score @s level matches 8 run tp @s 165.27 47.00 152.99 726.83 11.89
execute if score @s level matches 9 run tp @s 142.89 57.00 172.34 957.52 20.21
execute if score @s level matches 10 run tp @s 162.23 69.00 156.30 1080.35 24.14
execute if score @s level matches 11 run tp @s 150.67 4.06 118.36 1355.43 19.79
execute if score @s level matches 12 run tp @s 164.33 17.00 128.92 2239.91 6.01
execute if score @s level matches 13 run tp @s 164.54 59.00 119.45 1965.49 22.81
execute if score @s level matches 14 run tp @s 149.37 47.00 82.55 2101.01 18.52
execute if score @s level matches 15 run tp @s 158.51 11.00 71.33 -236.90 15.23
execute if score @s level matches 16 run tp @s 59.62 9.00 34.06 210.47 26.57
execute if score @s level matches 17 run tp @s 61.84 30.00 37.72 -91.09 20.80
execute if score @s level matches 18 run tp @s 32.45 46.00 20.74 -600.22 15.60
execute if score @s level matches 19 run tp @s 23.39 41.50 83.84 -1178.48 18.04
execute if score @s level matches 20 run tp @s 32.25 56.00 87.95 85.34 13.96
execute if score @s level matches 21 run tp @s 51.92 48.00 65.14 262.11 20.16
execute if score @s level matches 22 run tp @s 77.08 47.00 75.25 362.25 17.24
execute if score @s level matches 23 run tp @s 58.86 56.00 72.33 1269.24 21.96

#other
particle minecraft:witch ~ ~ ~ 0.3 0.2 0.3 0.3 1 force @a
effect give @s invisibility 1 0 true

execute if entity @s[scores={fail_timer=20}] run playsound minecraft:block.note_block.pling ambient @s ~ ~ ~ 10 2

execute if entity @s[scores={fail_timer=25..},tag=get_intimer] run tag @s add intimer
execute if entity @s[scores={fail_timer=25..}] run title @s clear
execute if entity @s[scores={fail_timer=25..}] run tag @s remove ghost
execute if entity @s[scores={fail_timer=25..}] run scoreboard players set @s fail_timer -1

scoreboard players add @s fail_timer 1



