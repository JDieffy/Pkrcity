





#runs as player that was hit by minecart
effect give @s slowness 1 10 true
effect give @s jump_boost 1 250 true
effect give @s nausea 7 10 true
playsound minecraft:we_effect.tank_hit ambient @s ~ ~ ~ 10 1
playsound minecraft:we_effect.beep ambient @s ~ ~ ~ 10 2
particle item gray_concrete ~ ~1 ~ 0.5 0.5 0.5 0.2 40 force @s
scoreboard players add @s fails 1
title @s times 0 0 10
title @s title {"text":"\uE003","color":"white"}





