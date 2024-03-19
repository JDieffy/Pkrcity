


clear @s
particle minecraft:note ~ ~1 ~ 0.6 0.5 0.6 10 50 force @a
playsound minecraft:entity.player.levelup ambient @a ~ ~ ~ 10 2
scoreboard players add !secrets_found main 1 
tellraw @a ["",{"text":"Secret ","color":"yellow"},{"score":{"name":"!secrets_found","objective":"main"},"color":"yellow"},{"text":"/50 found!","color":"yellow"}]
scoreboard players set @s pickup 0

#command to create secret below
#summon item ~ ~1 ~ {NoGravity:1b,Silent:1b,Age:-32768,Health:99999,PickupDelay:0,Tags:["secret"],Item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-1361784087,367348458,-2071723739,-109281733],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTVkZmEyODRhYTE1MzI0ZTUxNzg1NjFmODAzZjU5NzYyMjhkOTUxMTU1ODNhYjAzMTI2NmFlMjRlZTFhOTlkMSJ9fX0="}]}}}}}

