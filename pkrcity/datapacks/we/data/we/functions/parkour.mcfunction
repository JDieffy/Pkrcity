


#join stuff
scoreboard players add @s[name=!"Zombie1111",name=!"_Elton"] top_list 0
team join players @s
scoreboard players add @s rank 0
scoreboard players add @s times_win 0
scoreboard players add @s air_time 0



#set gamemode
gamemode adventure @s[gamemode=!spectator]

#give effect
effect give @s resistance 10 255 true

#ghost mode
scoreboard players enable @s Ghost
execute if score @s Ghost matches 1.. run function we:toggle_ghost

#return to lobby
scoreboard players enable @s Lobby
execute if score @s Lobby matches 1.. run function we:toggle_lobby

#leave lobby
execute positioned 30.00 38.00 20.06 if entity @s[gamemode=!spectator,dy=3,dx=0,dz=1.8] run function we:leave_lobby

#when in ghost
execute if entity @s[gamemode=spectator] run title @s actionbar {"text":"Type /trigger ghost to exit ghost mode","color":"dark_aqua"}

#give invisibi.ity
execute if score !toggle_hide main matches 2.. run effect give @s invisibility 1 0 true

#when timer is active or not
execute if entity @s[tag=intimer] run function we:timer_on
execute if entity @s[tag=!intimer] run function we:timer_off

#when jump
execute if score @s jumped matches 1.. run function we:when_jump

#detect drop timer
execute if score @s drop matches 1.. run function we:drop_item

#when not in ghost
execute if entity @s[gamemode=!spectator] run function we:not_ghost

#when failed
execute if score @s fail_timer matches 1.. run function we:when_failed

#jump boost thing
execute if block ~ ~-1 ~ minecraft:air run effect clear @s minecraft:jump_boost

#detect pickup secret
execute if score @s pickup matches 1.. run function we:pickup_secret

#when in win
execute if score @s win_timer matches 1.. run function we:when_inwin

#give head item
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=0}] armor.head with dirt{display:{Name:'[{"text":"Dirt Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Too bad to appear on the list!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=1}] armor.head with oak_planks{display:{Name:'[{"text":"Wood Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Can be burnt in lava!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=2}] armor.head with stone{display:{Name:'[{"text":"Stone Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Harder than wood!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=3}] armor.head with coal_block{display:{Name:'[{"text":"Coal Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Fuel for 13min and 20sec!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=4}] armor.head with iron_block{display:{Name:'[{"text":"Iron Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Stolen from the golems!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=5}] armor.head with gold_block{display:{Name:'[{"text":"Gold Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Piglins favorite head!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=6}] armor.head with diamond_block{display:{Name:'[{"text":"Diamond Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"The old top notch!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=7}] armor.head with emerald_block{display:{Name:'[{"text":"Emerald Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Time to flex on the villager girls or boys!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=8}] armor.head with netherite_block{display:{Name:'[{"text":"Netherite Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Lava and water resistance!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=9}] armor.head with obsidian{display:{Name:'[{"text":"Obsidian Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Atleast im not the crying type...","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=10}] armor.head with bedrock{display:{Name:'[{"text":"Bedrock Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Im unbreakable!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=11}] armor.head with sea_lantern{display:{Name:'[{"text":"Crystal Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Only one can be better!","italic":false,"color":"gray"}]']}} 1
execute if score !toggle_head main matches 2.. run item replace entity @s[scores={rank=12}] armor.head with beacon{display:{Name:'[{"text":"Star Rank","italic":false,"color":"yellow"}]',Lore:['[{"text":"Whos the king now?","italic":false,"color":"gray"}]']}} 1















