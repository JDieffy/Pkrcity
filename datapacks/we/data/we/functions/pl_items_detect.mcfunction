


#detect what item you dropped
tag @s remove clicked
execute if score @s item_sl matches 3 if score @s level matches 1.. run function we:pl_gm_restart
execute if score @s item_sl matches 2 if score @s fail_timer matches ..0 if score @s level matches 1.. unless entity @e[distance=..2,tag=pl_saved_pos] run function we:pl_checkpoint_load
execute if score @s item_sl matches 1 unless score @s fail_timer matches 1..99999 if entity @s[tag=ingame] run function we:pl_items_use_ghost
execute if entity @s[tag=!clicked] run playsound minecraft:we_effect.error_normal ambient @s ~ ~ ~ 10 1
tag @s add clicked



