




effect give @s levitation 1 2 true
scoreboard players add @s win_timer 1


#do win
execute if score @s win_timer matches 50 run function we:one_tick_win

#do fail
execute if score @s win_timer matches 100 run function we:one_tick_win

#do jump
execute if score @s win_timer matches 150 run function we:one_tick_win

#do rank
execute if score @s win_timer matches 200 run function we:one_tick_win

#do nothing
execute if score @s win_timer matches 250 run function we:one_tick_win

#do end
execute if score @s win_timer matches 300 run function we:one_tick_win

