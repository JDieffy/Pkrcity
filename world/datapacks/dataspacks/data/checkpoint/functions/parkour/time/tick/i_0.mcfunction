scoreboard players add @s timer.tick 1
execute if score @s timer.tick matches 20.. run function checkpoint:parkour/time/tick/i_0/i_0
execute if score @s timer.sec matches 60.. run function checkpoint:parkour/time/tick/i_0/i_1
execute if score @s timer.min matches 60.. run function checkpoint:parkour/time/tick/i_0/i_2
