




#particle
execute at @e[type=tnt,tag=lvl22_tnt] run particle large_smoke ~ ~0.5 ~ 0.1 0.1 0.1 0 1 force @a

#explode
execute if score !lvl22 math matches 60 as @e[type=tnt,tag=lvl22_tnt] at @s run function we:lvl22_boom

#reset
execute if score !lvl22 math matches 80.. positioned 58.45 53.00 -56.30 unless entity @a[distance=..17,gamemode=adventure,tag=timeron] positioned 47.27 53.50 -62.88 unless entity @a[distance=..20,scores={level=..22},gamemode=adventure,tag=timeron] run function we:lvl22_reset
execute if score !lvl22 math matches ..79 positioned 58.45 53.00 -56.30 unless entity @a[distance=..17,gamemode=adventure,tag=timeron] run function we:lvl22_reset
scoreboard players add !lvl22 math 1



