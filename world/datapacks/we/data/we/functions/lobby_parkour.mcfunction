

#show block
execute if entity @a[distance=0..5,limit=1] if block ~ ~ ~ air run particle minecraft:firework ~ ~0.5 ~ 0.3 0.3 0.3 0.1 20 force @a
execute if entity @a[distance=0..5,limit=1] if block ~ ~ ~ air run playsound minecraft:entity.wandering_trader.reappeared ambient @a ~ ~ ~ 1 2
execute if entity @a[distance=0..5,limit=1] if block ~ ~ ~ air run setblock ~ ~ ~ cyan_stained_glass

execute unless entity @a[distance=0..5,limit=1] unless block ~ ~ ~ air run particle minecraft:crimson_spore ~ ~ ~ 0.3 0.3 0.5 0.4 100 force @a
execute unless entity @a[distance=0..5,limit=1] unless block ~ ~ ~ air run setblock ~ ~ ~ air


