

#r
execute as @a at @s run function we:parkour

#display bossbar when have jump_boost
bossbar set jump_boost players @a[nbt={ActiveEffects:[{Id:8b}]}]

#lobby parkour
execute as @e[tag=lobby_parkour] at @s run function we:lobby_parkour

#lobby elevator
function we:lobby_stuff

#lobby buttons
execute if block 21 40 29 minecraft:stone_button[powered=true] positioned 21 40 29 run function we:toggle_pvp
execute if block 22 40 29 minecraft:stone_button[powered=true] positioned 22 40 29 run function we:toggle_toplist
execute if block 22 39 29 minecraft:stone_button[powered=true] positioned 22 39 29 run function we:toggle_head
execute if block 23 40 29 minecraft:stone_button[powered=true] positioned 23 40 29 run function we:toggle_invisibility

#particle minecraft:glow ~ ~1 ~ 0.3 0.5 0.3 0.3 100 force @a
execute if score !secrets_found main matches 10 run setblock 22 30 24 minecraft:air
execute if score !secrets_found main matches 20 run setblock 27 33 18 minecraft:air
execute if score !secrets_found main matches 30 run setblock 28 26 10 minecraft:air
execute if score !secrets_found main matches 40 run setblock 33 26 20 minecraft:air
execute if score !secrets_found main matches 50 run setblock 29 26 32 minecraft:air

