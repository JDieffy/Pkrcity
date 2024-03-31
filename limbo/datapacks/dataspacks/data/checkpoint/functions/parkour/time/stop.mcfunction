scoreboard players set chec.R9cYLTo0cL tbms.value 0
execute if score @s timer.stat matches 2 run scoreboard players set chec.R9cYLTo0cL tbms.value 1
execute if score @s timer.stat matches 1 run scoreboard players set chec.R9cYLTo0cL tbms.value 1
execute if score chec.R9cYLTo0cL tbms.value matches 1.. run scoreboard players set @s timer.stat 3
