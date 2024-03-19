

scoreboard players add !toggle_pvp main 1
execute if score !toggle_pvp main matches 3.. run scoreboard players set !toggle_pvp main 1

execute if score !toggle_pvp main matches 1 run data merge entity @e[tag=toggle_pvp,limit=1] {CustomName:'[{"text":"PvP ","color":"white"},{"text":"[On]","color":"dark_green"}]'}
execute if score !toggle_pvp main matches 1 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"You can now fight other players","color":"gray"}
execute if score !toggle_pvp main matches 1 run team modify players collisionRule always
execute if score !toggle_pvp main matches 1 run team modify players friendlyFire true
execute if score !toggle_pvp main matches 2 run data merge entity @e[tag=toggle_pvp,limit=1] {CustomName:'[{"text":"PvP ","color":"white"},{"text":"[Off]","color":"dark_red"}]'}
execute if score !toggle_pvp main matches 2 run tellraw @a[distance=0..5,tag=!ingame,gamemode=!spectator] {"text":"You can no longer fight other players","color":"gray"}
execute if score !toggle_pvp main matches 2 run team modify players collisionRule never
execute if score !toggle_pvp main matches 2 run team modify players friendlyFire false
setblock 21 40 29 minecraft:stone_button[face=wall,facing=north,powered=false]


