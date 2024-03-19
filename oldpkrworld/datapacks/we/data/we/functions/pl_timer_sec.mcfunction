


#runs every sec as player with timer on
#timer stuff
scoreboard players set @s timer_tick 0
scoreboard players add @s timer_sec 1
scoreboard players add @s total_timer 1
execute if score @s timer_sec matches 60.. run scoreboard players add @s timer_min 1
execute if score @s timer_sec matches 60.. run scoreboard players set @s timer_sec 0
execute if score @s timer_min matches 60.. run scoreboard players add @s timer_hour 1
execute if score @s timer_min matches 60.. run scoreboard players set @s timer_min 0

#tags
execute if entity @s[tag=lvl8_used] positioned 66.9 38 -36 unless entity @s[distance=..2] if predicate we:on_ground run tag @s remove lvl8_used


