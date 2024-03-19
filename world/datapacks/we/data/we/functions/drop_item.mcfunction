



#dropped restart
execute if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players add @s attempts 1
execute if entity @s[nbt={SelectedItemSlot:3}] run tellraw @s ["",{"text":"Restarted, ","color":"dark_purple"},{"text":"attempt ","color":"light_purple"},{"score":{"name":"@s","objective":"attempts"},"color":"light_purple"},{"text":"!","color":"dark_purple"}]
execute if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s level 0
execute if entity @s[nbt={SelectedItemSlot:3}] run scoreboard players set @s fail_timer 0
execute if entity @s[nbt={SelectedItemSlot:3}] run tag @s remove intimer
execute if entity @s[nbt={SelectedItemSlot:3}] run execute in minecraft:overworld run tp @s 99.63 3.00 79.51 2061.77 6.73
execute if entity @s[nbt={SelectedItemSlot:3}] run playsound minecraft:block.respawn_anchor.deplete ambient @s ~ ~ ~ 100 1
execute if entity @s[nbt={SelectedItemSlot:3}] run execute in minecraft:overworld run tp @s 99.63 3.00 79.51 2061.77 6.73
execute if entity @s[nbt={SelectedItemSlot:3}] run execute positioned 99.57 4.00 79.54 run particle minecraft:damage_indicator 99.57 4.00 79.54 0.5 0.6 0.5 0.3 100 force @a

#dropped checkpoint
execute if entity @s[nbt={SelectedItemSlot:5}] run tellraw @s {"text":"Teleported to last checkpoint!","color":"dark_purple"}
execute if entity @s[nbt={SelectedItemSlot:5}] run function we:set_failed

#dropped ghost
execute if entity @s[nbt={SelectedItemSlot:8}] run scoreboard players set @s Ghost 1

clear @s
kill @e[type=item,tag=!secret]
scoreboard players set @s drop 0






