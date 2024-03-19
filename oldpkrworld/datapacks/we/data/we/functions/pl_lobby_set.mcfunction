



#runs as player that reach lobby area after intro
#summon
execute unless entity @e[type=item_frame,tag=lvl00_statue] run summon minecraft:item_frame 64.50 7.50 -42.97 {NoGravity: 1b, Motion: [0.0d, 0.0d, 0.0d], Facing: 3b, ItemRotation: 0b, Silent: 1b, Invulnerable: 1b, Air: 300s, OnGround: 0b, PortalCooldown: 0, Rotation: [0.0f, 0.0f], FallDistance: 0.0f, Item: {id: "minecraft:diamond_shovel", Count: 1b, tag: {CustomModelData: 8, Damage: 0}}, ItemDropChance: 1.0f, Fire: 0s, TileY: 7, TileX: 64, Invisible: 1b, TileZ: -43, Tags: ["lvl00_statue"], Fixed: 1b}
execute unless entity @e[type=parrot,tag=lvl00_bird] run summon parrot 66.46 8.13 -42.50 {NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,Sitting:1b,Variant:2,Tags:["lvl00_bird"],CustomName:'{"text":"Sing Bird","color":"gray","italic":true}'}
execute unless entity @e[type=armor_stand,tag=en_txt_jb1] run summon armor_stand 53.54 15.50 12.33 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["en_txt_jb1"],CustomName:'{"text":"Boost","color":"green","underlined":true}'}
execute unless entity @e[type=armor_stand,tag=en_txt_jb2] run summon armor_stand 66.83 39.00 -35.14 {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["en_txt_jb2"],CustomName:'{"text":"Boost","color":"green","underlined":true}'}
execute unless entity @e[type=marker,tag=lvl8_face] run summon marker 49.69 23.64 -9.68 {NoGravity:1b,Silent:1b,Invulnerable:1b,Tags:["lvl8_face"]}

#tags
tag @s add ingame

#spawnpoint
spawnpoint @s 57 6 -39 -49

#score
scoreboard players set @s elytra 0

#gamemode
gamemode adventure @s

#difficulty
gamerule showDeathMessages false
gamerule sendCommandFeedback false
difficulty easy
gamerule doMobSpawning false
gamerule doMobLoot false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule doPatrolSpawning false
gamerule randomTickSpeed 0
gamerule mobGriefing false
gamerule doDaylightCycle false
time set night
gamerule doWeatherCycle false
weather clear
gamerule disableRaids true

#clear stuff
effect clear @s
tag @s add ignore_upt
clear @s

#text
title @s times 0 0 20
title @s title {"text":"\uE002","color":"red"}
tellraw @s {"translate":"You dont have resourcepack! [Click for download]","color":"red","clickEvent":{"action":"open_url","value":"https://www.mediafire.com/file/q4ylfu2ebauw971/Whirlpool_Parkour_Texture.zip/file"}}
tellraw @s {"text":"Good luck and have fun!","color":"gray"}

#sound and particle
playsound minecraft:we_effect.mystery_4 ambient @s ~ ~ ~ 10 2
particle heart ~ ~1 ~ 2 2 2 0 100 force @s






