






#runs every tick if should summon carts
#summon line  1
execute if score !carts math matches 1 run summon furnace_minecart 47 17 -50 {Invulnerable:1b,PushX:-3d,PushZ:-3d,Fuel:199980,Tags:["lvl11_carts"],Rotation:[90f,0f]}

#summon line  2
execute if score !carts math matches 1 run summon furnace_minecart 47 17 -49 {Invulnerable:1b,PushX:-3d,PushZ:-3d,Fuel:199980,Tags:["lvl11_carts"],Rotation:[90f,0f]}

#summon line  3
execute if score !carts math matches 1 run summon furnace_minecart 47 17 -48 {Invulnerable:1b,PushX:-3d,PushZ:-3d,Fuel:199980,Tags:["lvl11_carts"],Rotation:[90f,0f]}

#summon line  4
execute if score !carts math matches 1 run summon furnace_minecart 47 17 -47 {Invulnerable:1b,PushX:-3d,PushZ:-3d,Fuel:199980,Tags:["lvl11_carts"],Rotation:[90f,0f]}

#summon line  5
execute if score !carts math matches 1 run summon furnace_minecart 47 17 -46 {Invulnerable:1b,PushX:-3d,PushZ:-3d,Fuel:199980,Tags:["lvl11_carts"],Rotation:[90f,0f]}

#detect
execute as @e[type=furnace_minecart,tag=lvl11_carts] at @s unless block ~ ~ ~ rail unless block ~ ~ ~ powered_rail run kill @s

#reset
scoreboard players add !carts math 1
execute if score !carts math matches 4.. run scoreboard players set !carts math 1



