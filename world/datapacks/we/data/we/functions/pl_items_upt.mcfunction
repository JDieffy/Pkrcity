





#runs as player that updated inventory
#detect if item dropped
execute unless score @s win_timer matches 1..100 if entity @s[tag=!ignore_upt] unless entity @s[nbt={SelectedItem:{Count:1b}}] run function we:pl_items_detect
tag @s add ignore_upt
schedule function we:pl_items_upt_reset 1t replace

#sound
execute unless entity @s[tag=clicked] run playsound minecraft:item.armor.equip_iron ambient @s ~ ~ ~ 10 1

#detect what main slot to select
execute if score @s item_sl_slot matches 0 run scoreboard players set @s item_sl 1
execute if score @s item_sl_slot matches 1 run scoreboard players set @s item_sl 2
execute if score @s item_sl_slot matches 2 run scoreboard players set @s item_sl 3
execute if score @s item_sl_slot matches 3 run scoreboard players set @s item_sl 1
execute if score @s item_sl_slot matches 4 run scoreboard players set @s item_sl 2
execute if score @s item_sl_slot matches 5 run scoreboard players set @s item_sl 3
execute if score @s item_sl_slot matches 6 run scoreboard players set @s item_sl 1
execute if score @s item_sl_slot matches 7 run scoreboard players set @s item_sl 2
execute if score @s item_sl_slot matches 8 run scoreboard players set @s item_sl 3

#give items
#clear
clear @s
kill @e[distance=..10,type=item]

#selected slot
execute if score @s item_sl matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:2} 1
execute if score @s item_sl matches 2 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:2} 1
execute if score @s item_sl matches 3 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:2} 1

#invisible
item replace entity @s hotbar.0 with carrot_on_a_stick{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
execute unless score @s item_sl matches 1 run item replace entity @s hotbar.3 with carrot_on_a_stick{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
execute unless score @s item_sl matches 2 run item replace entity @s hotbar.4 with carrot_on_a_stick{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
execute unless score @s item_sl matches 3 run item replace entity @s hotbar.5 with carrot_on_a_stick{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
item replace entity @s hotbar.6 with carrot_on_a_stick{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
item replace entity @s hotbar.7 with carrot_on_a_stick{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1
item replace entity @s hotbar.8 with carrot_on_a_stick{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1} 1

#if in ghost
execute if entity @s[tag=inghost] run function we:pl_in_ghost_upt

#if in intro
execute if entity @s[tag=!timeron,tag=!ingame,gamemode=adventure] run item replace entity @s armor.chest with elytra{Unbreakable:1,EntityTag:{Invisible:1b},HideFlags:127} 1

#reset
tag @s remove clicked
scoreboard players operation @s item_sl_slot_sub = @s item_sl_slot
advancement revoke @s only we:items_upt








