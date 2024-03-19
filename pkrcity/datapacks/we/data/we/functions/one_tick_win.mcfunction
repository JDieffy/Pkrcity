




summon firework_rocket ~-10 ~ ~ {HasVisualFire:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;6225689],FadeColors:[I;10747879]}]}}}}
summon firework_rocket ~10 ~ ~ {HasVisualFire:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;6225689],FadeColors:[I;10747879]}]}}}}
summon firework_rocket ~ ~ ~10 {HasVisualFire:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;6225689],FadeColors:[I;10747879]}]}}}}
summon firework_rocket ~ ~ ~-10 {HasVisualFire:1b,LifeTime:0,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;6225689],FadeColors:[I;10747879]}]}}}}

#do time
execute if score @s win_timer matches 50 run execute if score @s tick matches ..7800 run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [S Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 7801..8400 run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [A Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 8401..12000 run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [B Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 12001..18000 run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [C Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 18001..24000 run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [D Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 24001..36000 run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [E Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 36001.. run title @s title ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [F Grade]","color":"yellow"}]

execute if score @s win_timer matches 50 run execute if score @s tick matches ..7800 run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [S Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 7801..8400 run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [A Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 8401..12000 run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [B Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 12001..18000 run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [C Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 18001..24000 run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [D Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 24001..36000 run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [E Grade]","color":"yellow"}]
execute if score @s win_timer matches 50 run execute if score @s tick matches 36001.. run tellraw @s ["",{"text":"Time: ","color":"gold"},{"score":{"name":"@s","objective":"time_h"},"color":"gold"},{"text":"h,","color":"gold"},{"score":{"name":"@s","objective":"time_m"},"color":"gold"},{"text":"m,","color":"gold"},{"score":{"name":"@s","objective":"time_s"},"color":"gold"},{"text":"s,","color":"gold"},{"score":{"name":"@s","objective":"time_t"},"color":"gold"},{"text":"t","color":"gold"},{"text":" [F Grade]","color":"yellow"}]

execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run tellraw @s {"text":"You got a new time record!","color":"dark_green"}
execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run title @s subtitle {"text":"You got a new time record!","color":"dark_green"}
execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run scoreboard players operation @s best_time_h = @s time_h
execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run scoreboard players operation @s best_time_m = @s time_m
execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run scoreboard players operation @s best_time_s = @s time_s
execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run scoreboard players operation @s best_time_t = @s time_t
execute if score @s win_timer matches 50 run execute if score @s tick < @s best_tick run scoreboard players operation @s best_tick = @s tick

#do Fails
execute if score @s win_timer matches 100 run execute if score @s fail matches ..0 run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [S grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 1..4 run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [A grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 5..10 run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [B grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 11..20 run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [C grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 21..40 run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [D grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 41..100 run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [E grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 101.. run title @s title ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [F grade]","color":"yellow"}]

execute if score @s win_timer matches 100 run execute if score @s fail matches ..0 run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [S grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 1..4 run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [A grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 5..10 run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [B grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 11..20 run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [C grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 21..40 run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [D grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 41..100 run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [E grade]","color":"yellow"}]
execute if score @s win_timer matches 100 run execute if score @s fail matches 101.. run tellraw @s ["",{"text":"Fails: ","color":"gold"},{"score":{"name":"@s","objective":"fail"},"color":"gold"},{"text":" [F grade]","color":"yellow"}]

execute if score @s win_timer matches 100 run execute if score @s fail < @s best_fail run tellraw @s {"text":"You got a new fail record!","color":"dark_green"}
execute if score @s win_timer matches 100 run execute if score @s fail < @s best_fail run title @s subtitle {"text":"You got a new fail record!","color":"dark_green"}
execute if score @s win_timer matches 100 run execute if score @s fail < @s best_fail run scoreboard players operation @s best_fail = @s fail

#do Jumps
execute if score @s win_timer matches 150 run execute if score @s jump matches ..370 run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [S grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 371..430 run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [A grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 431..500 run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [B grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 501..600 run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [C grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 601..700 run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [D grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 701..800 run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [E grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 801.. run title @s title ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [F grade]","color":"yellow"}]

execute if score @s win_timer matches 150 run execute if score @s jump matches ..370 run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [S grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 371..430 run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [A grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 431..500 run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [B grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 501..600 run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [C grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 601..700 run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [D grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 701..800 run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [E grade]","color":"yellow"}]
execute if score @s win_timer matches 150 run execute if score @s jump matches 801.. run tellraw @s ["",{"text":"Jumps: ","color":"gold"},{"score":{"name":"@s","objective":"jump"},"color":"gold"},{"text":" [F grade]","color":"yellow"}]

execute if score @s win_timer matches 150 run execute if score @s jump < @s best_jump run tellraw @s {"text":"You got a new jump record!","color":"dark_green"}
execute if score @s win_timer matches 150 run execute if score @s jump < @s best_jump run title @s subtitle {"text":"You got a new jump record!","color":"dark_green"}
execute if score @s win_timer matches 150 run execute if score @s jump < @s best_jump run scoreboard players operation @s best_jump = @s jump

#do score and rank
#add score
execute if score @s win_timer matches 200 run scoreboard players set @s top_list 0

execute if score @s win_timer matches 200 run execute if score @s best_jump matches ..370 run scoreboard players add @s top_list 70
execute if score @s win_timer matches 200 run execute if score @s best_jump matches 371..430 run scoreboard players add @s top_list 60
execute if score @s win_timer matches 200 run execute if score @s best_jump matches 431..500 run scoreboard players add @s top_list 50
execute if score @s win_timer matches 200 run execute if score @s best_jump matches 501..600 run scoreboard players add @s top_list 40
execute if score @s win_timer matches 200 run execute if score @s best_jump matches 601..700 run scoreboard players add @s top_list 30
execute if score @s win_timer matches 200 run execute if score @s best_jump matches 701..800 run scoreboard players add @s top_list 20
execute if score @s win_timer matches 200 run execute if score @s best_jump matches 801.. run scoreboard players add @s top_list 10

execute if score @s win_timer matches 200 run execute if score @s best_fail matches ..0 run scoreboard players add @s top_list 70
execute if score @s win_timer matches 200 run execute if score @s best_fail matches 1..4 run scoreboard players add @s top_list 60
execute if score @s win_timer matches 200 run execute if score @s best_fail matches 5..10 run scoreboard players add @s top_list 50
execute if score @s win_timer matches 200 run execute if score @s best_fail matches 11..20 run scoreboard players add @s top_list 40
execute if score @s win_timer matches 200 run execute if score @s best_fail matches 21..40 run scoreboard players add @s top_list 30
execute if score @s win_timer matches 200 run execute if score @s best_fail matches 41..100 run scoreboard players add @s top_list 20
execute if score @s win_timer matches 200 run execute if score @s best_fail matches 101.. run scoreboard players add @s top_list 10

execute if score @s win_timer matches 200 run execute if score @s best_tick matches ..7800 run scoreboard players add @s top_list 70
execute if score @s win_timer matches 200 run execute if score @s best_tick matches 7801..8400 run scoreboard players add @s top_list 60
execute if score @s win_timer matches 200 run execute if score @s best_tick matches 8401..12000 run scoreboard players add @s top_list 50
execute if score @s win_timer matches 200 run execute if score @s best_tick matches 12001..18000 run scoreboard players add @s top_list 40
execute if score @s win_timer matches 200 run execute if score @s best_tick matches 18001..24000 run scoreboard players add @s top_list 30
execute if score @s win_timer matches 200 run execute if score @s best_tick matches 24001..36000 run scoreboard players add @s top_list 20
execute if score @s win_timer matches 200 run execute if score @s best_tick matches 36001.. run scoreboard players add @s top_list 10

#set rank
execute if score @s win_timer matches 200 run execute if score @s top_list matches 0.. run scoreboard players set @s rank 0
execute if score @s win_timer matches 200 run execute if score @s top_list matches 30.. run scoreboard players set @s rank 1
execute if score @s win_timer matches 200 run execute if score @s top_list matches 47.. run scoreboard players set @s rank 2
execute if score @s win_timer matches 200 run execute if score @s top_list matches 64.. run scoreboard players set @s rank 3
execute if score @s win_timer matches 200 run execute if score @s top_list matches 81.. run scoreboard players set @s rank 4
execute if score @s win_timer matches 200 run execute if score @s top_list matches 98.. run scoreboard players set @s rank 5
execute if score @s win_timer matches 200 run execute if score @s top_list matches 115.. run scoreboard players set @s rank 6
execute if score @s win_timer matches 200 run execute if score @s top_list matches 132.. run scoreboard players set @s rank 7
execute if score @s win_timer matches 200 run execute if score @s top_list matches 149.. run scoreboard players set @s rank 8
execute if score @s win_timer matches 200 run execute if score @s top_list matches 166.. run scoreboard players set @s rank 9
execute if score @s win_timer matches 200 run execute if score @s top_list matches 183.. run scoreboard players set @s rank 10
execute if score @s win_timer matches 200 run execute if score @s top_list matches 200.. run scoreboard players set @s rank 11
execute if score @s win_timer matches 200 run execute if score @s top_list matches 210.. run scoreboard players set @s rank 12

#detect if got record
execute if score @s win_timer matches 200 run execute if score @s best_rank < @s rank run tellraw @s ["",{"text":"You have reached a new rank!","color":"dark_aqua"},{"text":" GG","color":"aqua"}]
execute if score @s win_timer matches 200 run title @s title {"text":"Congratulations","color":"green"}
execute if score @s win_timer matches 200 if score @s times_win matches ..1 run title @s subtitle ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"st time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches 2 run title @s subtitle ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"nd time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches 3 run title @s subtitle ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"rd time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches 4.. run title @s subtitle ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"th time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches ..1 run tellraw @s ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"st time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches 2 run tellraw @s ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"nd time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches 3 run tellraw @s ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"rd time!","color":"gray"}]
execute if score @s win_timer matches 200 if score @s times_win matches 4.. run tellraw @s ["",{"text":"Parkour completed for ","color":"gray"},{"score":{"name":"@s","objective":"times_win"},"color":"white"},{"text":"th time!","color":"gray"}]
execute if score @s win_timer matches 200 run scoreboard players operation @s best_rank = @s rank

#exit
execute if score @s win_timer matches 300 run tag @s remove get_intimer
execute if score @s win_timer matches 300 run tag @s remove ingame
execute if score @s win_timer matches 300 run tag @s remove intimer
execute if score @s win_timer matches 300 run effect clear @s
execute if score @s win_timer matches 300 run clear @s
execute if score @s win_timer matches 300 run execute in minecraft:overworld run tp @s 23.15 38.06 22.11 266.28 -2.11
execute if score @s win_timer matches 300 run particle minecraft:portal 23.15 38.56 22.11 0.5 0.7 0.5 2 300 force @a
execute if score @s win_timer matches 300 run playsound minecraft:item.chorus_fruit.teleport ambient @s ~ ~ ~ 100 1
execute if score @s win_timer matches 300 run title @s clear
execute if score @s win_timer matches 300 run scoreboard players set @s win_timer 0


