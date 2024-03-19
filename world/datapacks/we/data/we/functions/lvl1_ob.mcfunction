




#runs once when player reach ob part
execute positioned 51.44 11.00 -39.50 run playsound minecraft:entity.ghast.shoot ambient @a[distance=..10] 51.44 11.00 -39.50 10 1.5

summon falling_block 51 10 -40 {BlockState:{Name:"minecraft:obsidian"},Silent:1b,HasVisualFire:1b,Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.3,0.0],Tags:["lvl1_ob"]}
summon falling_block 54 10 -43 {BlockState:{Name:"minecraft:obsidian"},Silent:1b,HasVisualFire:1b,Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.5,0.0],Tags:["lvl1_ob"]}
summon falling_block 57 12 -44 {BlockState:{Name:"minecraft:obsidian"},Silent:1b,HasVisualFire:1b,Time:1,DropItem:0b,HurtEntities:0b,Motion:[0.0,0.7,0.0],Tags:["lvl1_ob"]}

execute as @e[tag=lvl1_ob] at @s run particle minecraft:lava ~ ~0.7 ~ 0.3 0.3 0.3 0 40 force @a[distance=..20]




