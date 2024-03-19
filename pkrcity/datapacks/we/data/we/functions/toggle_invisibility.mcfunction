




scoreboard players add !toggle_hide main 1
execute if score !toggle_hide main matches 4.. run scoreboard players set !toggle_hide main 1

execute if score !toggle_hide main matches 1 run data merge entity @e[tag=toggle_hide,limit=1] {CustomName:'[{"text":"Hide ","color":"white"},{"text":"[Off]","color":"dark_red"}]'}
execute if score !toggle_hide main matches 1 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"All players is 100% visible","color":"gray"}
execute if score !toggle_hide main matches 1 run team modify players seeFriendlyInvisibles true
execute if score !toggle_hide main matches 1 run effect clear @a invisibility
execute if score !toggle_hide main matches 2 run data merge entity @e[tag=toggle_hide,limit=1] {CustomName:'[{"text":"Hide ","color":"white"},{"text":"[Mid]","color":"gold"}]'}
execute if score !toggle_hide main matches 2 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"All players is 50% visible","color":"gray"}
execute if score !toggle_hide main matches 2 run team modify players seeFriendlyInvisibles true
execute if score !toggle_hide main matches 3 run data merge entity @e[tag=toggle_hide,limit=1] {CustomName:'[{"text":"Hide ","color":"white"},{"text":"[On]","color":"dark_green"}]'}
execute if score !toggle_hide main matches 3 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"All players is 0% visible","color":"gray"}
execute if score !toggle_hide main matches 3 run team modify players seeFriendlyInvisibles false

setblock 23 40 29 minecraft:stone_button[face=wall,facing=north,powered=false]




