








scoreboard players add !toggle_head main 1
execute if score !toggle_head main matches 3.. run scoreboard players set !toggle_head main 1

execute if score !toggle_head main matches 2 run data merge entity @e[tag=toggle_head,limit=1] {CustomName:'[{"text":"Head ","color":"white"},{"text":"[On]","color":"dark_green"}]'}
execute if score !toggle_head main matches 2 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"You will now have a block on your head depending on your rank","color":"gray"}
execute if score !toggle_head main matches 2 run item replace entity @a armor.head with air
execute if score !toggle_head main matches 1 run data merge entity @e[tag=toggle_head,limit=1] {CustomName:'[{"text":"Head ","color":"white"},{"text":"[Off]","color":"dark_red"}]'}
execute if score !toggle_head main matches 1 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"You will no longer have a block on your head","color":"gray"}
execute if score !toggle_head main matches 1 run item replace entity @a armor.head with air

setblock 22 39 29 minecraft:stone_button[face=wall,facing=north,powered=false]








