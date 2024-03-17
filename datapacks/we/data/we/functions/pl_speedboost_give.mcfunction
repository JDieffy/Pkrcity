



#runs as player standing on speed arrow if dont have speed
effect give @s speed 1 10 true
playsound minecraft:we_effect.super_run ambient @a[distance=..10] ~ ~ ~ 1 1
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.8 0.5 0 100 force @a
title @s times 0 0 20
title @s title {"text":"\uE004","color":"white"}
tag @s add ignore_speedboost





