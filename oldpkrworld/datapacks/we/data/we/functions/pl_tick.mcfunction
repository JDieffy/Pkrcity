


#runs as player every tick
#if in Creative mode
execute if entity @s[tag=inghost] run function we:pl_in_ghost_tick

#detect item holding
execute store result score @s item_sl_slot run data get entity @s SelectedItemSlot
execute unless score @s item_sl_slot_sub = @s item_sl_slot run advancement grant @s only we:items_upt

#speed boost
execute if block ~ ~-0.6 ~ magenta_glazed_terracotta if entity @s[gamemode=adventure,tag=!ignore_speedboost] run function we:pl_speedboost_give
execute if block ~ ~-1.1 ~ magenta_glazed_terracotta if entity @s[gamemode=adventure,tag=!ignore_speedboost] run function we:pl_speedboost_give
execute if entity @s[tag=ignore_speedboost] unless block ~ ~-0.6 ~ magenta_glazed_terracotta unless block ~ ~-1.1 ~ magenta_glazed_terracotta run tag @s remove ignore_speedboost

#timer
execute if entity @s[tag=timeron,tag=!inghost,gamemode=adventure] run function we:pl_timer_tick
execute if entity @s[tag=!timeron,tag=!inghost] run function we:pl_lobby_tick

#fail
execute if score @s fail_timer matches 1.. run function we:pl_fail_tick
execute if score @s death_counter matches 1.. run function we:pl_die

#detect if joined
execute unless score @s leave_world matches 1 run schedule function we:pl_gm_join 20t append




