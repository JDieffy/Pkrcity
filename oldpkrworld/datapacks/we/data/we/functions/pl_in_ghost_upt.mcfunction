




#runs as player that is in ghost when inv update
#selected slot
execute if score @s item_sl matches 1 run item replace entity @s hotbar.3 with iron_sword{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
execute if score @s item_sl matches 2 run item replace entity @s hotbar.4 with iron_sword{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
execute if score @s item_sl matches 3 run item replace entity @s hotbar.5 with iron_sword{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:2,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1

#swords
item replace entity @s hotbar.0 with iron_sword{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
item replace entity @s hotbar.1 with iron_sword{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
item replace entity @s hotbar.2 with iron_sword{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
execute unless score @s item_sl matches 1 run item replace entity @s hotbar.3 with iron_sword{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
execute unless score @s item_sl matches 2 run item replace entity @s hotbar.4 with iron_sword{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
execute unless score @s item_sl matches 3 run item replace entity @s hotbar.5 with iron_sword{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
item replace entity @s hotbar.6 with iron_sword{display:{Name:'[{"text":"Creative Mode","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
item replace entity @s hotbar.7 with iron_sword{display:{Name:'[{"text":"Last Checkpoint","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1
item replace entity @s hotbar.8 with iron_sword{display:{Name:'[{"text":"Restart","color":"gold"},{"text":" [Drop]","color":"yellow","italic":true}]'},HideFlags:127,Unbreakable:1b,CustomModelData:1,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-100,Operation:0,UUID:[I;-1616638053,-511556788,-1299409026,-1951858542]}]} 1





