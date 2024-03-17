





#summon falling
execute if score !lvl23 math matches 1 run summon falling_block 68 62 -70 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 2 run summon falling_block 68 62 -69 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 3 run summon falling_block 67 62 -69 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 4 run summon falling_block 66 63 -69 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 5 run summon falling_block 67 62 -68 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}

execute if score !lvl23 math matches 6 run summon falling_block 69 62 -76 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 7 run summon falling_block 68 62 -76 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 8 run summon falling_block 67 63 -76 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 9 run summon falling_block 68 62 -75 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 10 run summon falling_block 67 63 -75 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 11 run summon falling_block 66 64 -75 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}
execute if score !lvl23 math matches 12 run summon falling_block 68 62 -74 {BlockState:{Name:"minecraft:gravel"},Time:1,DropItem:0b,HurtEntities:0b,Tags:["lvl23_fall"]}

#reset
execute if score !lvl23 math matches 20.. unless entity @a[scores={level=23},gamemode=adventure,tag=timeron] run function we:lvl23_reset
scoreboard players add !lvl23 math 1





