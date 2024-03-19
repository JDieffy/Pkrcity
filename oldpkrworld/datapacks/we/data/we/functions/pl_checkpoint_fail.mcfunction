




#run as player that should get fail score but no tp
#score
scoreboard players add @s fails 1
scoreboard players set @s jump 0

#tags
tag @s add ignore_fail
tag @s remove ignore_lvl23_jump

#sound and particle
playsound minecraft:we_effect.big_pickup ambient @a[distance=..10] ~ ~ ~ 1 2
particle block_marker barrier ~ ~0.5 ~ 0 0 0 0 1 force @a 


