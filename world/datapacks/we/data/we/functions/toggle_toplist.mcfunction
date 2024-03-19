





scoreboard players add !toggle_list main 1
execute if score !toggle_list main matches 3.. run scoreboard players set !toggle_list main 1

execute if score !toggle_list main matches 1 run data merge entity @e[tag=toggle_list,limit=1] {CustomName:'[{"text":"List ","color":"white"},{"text":"[On]","color":"dark_green"}]'}
execute if score !toggle_list main matches 1 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"You may now see a top list on the side","color":"gray"}
execute if score !toggle_list main matches 1 run scoreboard objectives setdisplay sidebar top_list
execute if score !toggle_list main matches 2 run data merge entity @e[tag=toggle_list,limit=1] {CustomName:'[{"text":"List ","color":"white"},{"text":"[Off]","color":"dark_red"}]'}
execute if score !toggle_list main matches 2 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"You will never see a top list on the side","color":"gray"}
execute if score !toggle_list main matches 2 run scoreboard objectives setdisplay sidebar clear_view
setblock 22 40 29 minecraft:stone_button[face=wall,facing=north,powered=false]





