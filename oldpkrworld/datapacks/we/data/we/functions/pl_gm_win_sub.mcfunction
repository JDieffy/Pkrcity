


#runs when player wins as nothing
#add timer
execute as @a[scores={win_timer=1..5}] run scoreboard players add @s win_timer 1
title @a[scores={win_timer=1..5}] times 0 40 20

#fireworks
execute as @a[scores={win_timer=1..5}] at @s run summon firework_rocket ~ ~ ~ {HasVisualFire:1b,Glowing:1b,LifeTime:20,ShotAtAngle:1b,Motion:[1.0,0.0,0.0],Tags:["win_rocket"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;2883371],FadeColors:[I;13762554]}]}}}}
execute as @a[scores={win_timer=1..5}] at @s run summon firework_rocket ~ ~ ~ {HasVisualFire:1b,Glowing:1b,LifeTime:20,ShotAtAngle:1b,Motion:[-1.0,0.0,0.0],Tags:["win_rocket"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;2883371],FadeColors:[I;13762554]}]}}}}
execute as @a[scores={win_timer=1..5}] at @s run summon firework_rocket ~ ~ ~ {HasVisualFire:1b,Glowing:1b,LifeTime:20,ShotAtAngle:1b,Motion:[0.0,0.0,1.0],Tags:["win_rocket"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;2883371],FadeColors:[I;13762554]}]}}}}
execute as @a[scores={win_timer=1..5}] at @s run summon firework_rocket ~ ~ ~ {HasVisualFire:1b,Glowing:1b,LifeTime:20,ShotAtAngle:1b,Motion:[0.0,0.0,-1.0],Tags:["win_rocket"],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:4,Flicker:1b,Trail:1b,Colors:[I;2883371],FadeColors:[I;13762554]}]}}}}

#tick 1 time
execute as @a[scores={win_timer=2}] if score @s total_timer matches ..260 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"S++/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 261..290 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"S/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 291..330 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"A/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 331..420 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"B/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 421..600 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"C/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 601..900 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"D/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 901..1200 run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"E/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 1201.. run title @s title ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"F/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches ..260 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"S++/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 261..290 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"S/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 291..330 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"A/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 331..420 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"B/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 421..600 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"C/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 601..900 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"D/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 901..1200 run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"E/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] if score @s total_timer matches 1201.. run tellraw @s ["",{"text":"Time Grade: ","color":"dark_green"},{"text":"F/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=2}] run title @s subtitle ["",{"text":"[","color":"black"},{"text":"Time: ","color":"green"},{"score":{"name":"@s","objective":"timer_hour"},"color":"green"},{"text":"h,","color":"green"},{"score":{"name":"@s","objective":"timer_min"},"color":"green"},{"text":"m,","color":"green"},{"score":{"name":"@s","objective":"timer_sec"},"color":"green"},{"text":"s,","color":"green"},{"score":{"name":"@s","objective":"timer_tick"},"color":"green"},{"text":"t","color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=2}] run tellraw @s ["",{"text":"[","color":"black"},{"text":"Time: ","color":"green"},{"score":{"name":"@s","objective":"timer_hour"},"color":"green"},{"text":"h,","color":"green"},{"score":{"name":"@s","objective":"timer_min"},"color":"green"},{"text":"m,","color":"green"},{"score":{"name":"@s","objective":"timer_sec"},"color":"green"},{"text":"s,","color":"green"},{"score":{"name":"@s","objective":"timer_tick"},"color":"green"},{"text":"t","color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=2}] if score @s total_timer < @s b_total_timer run tag @s add new_tm_record
execute as @a[scores={win_timer=2}] if score @s total_timer = @s b_total_timer if score @s timer_tick < @s b_timer_tick run tag @s add new_tm_record
execute as @a[scores={win_timer=2}] if entity @s[tag=new_tm_record] run tellraw @s {"text":"You got a new time record","color":"yellow"}
execute as @a[scores={win_timer=2}] if entity @s[tag=new_tm_record] run scoreboard players operation @s b_total_timer = @s total_timer
execute as @a[scores={win_timer=2}] if entity @s[tag=new_tm_record] run scoreboard players operation @s b_timer_hour = @s timer_hour
execute as @a[scores={win_timer=2}] if entity @s[tag=new_tm_record] run scoreboard players operation @s b_timer_min = @s timer_min
execute as @a[scores={win_timer=2}] if entity @s[tag=new_tm_record] run scoreboard players operation @s b_timer_sec = @s timer_sec
execute as @a[scores={win_timer=2}] if entity @s[tag=new_tm_record] run scoreboard players operation @s b_timer_tick = @s timer_tick

#tick 2 fails
execute as @a[scores={win_timer=3}] if score @s fails matches ..0 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"S++/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 1..2 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"S/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 3..5 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"A/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 6..10 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"B/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 11..20 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"C/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 21..35 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"D/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 36..60 run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"E/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 61.. run title @s title ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"F/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches ..0 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"S++/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 1..2 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"S/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 3..5 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"A/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 6..10 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"B/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 11..20 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"C/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 21..35 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"D/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 36..60 run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"E/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] if score @s fails matches 61.. run tellraw @s ["",{"text":"Fail Grade: ","color":"dark_green"},{"text":"F/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=3}] run title @s subtitle ["",{"text":"[","color":"black"},{"text":"Fails: ","color":"green"},{"score":{"name":"@s","objective":"fails"},"color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=3}] run tellraw @s ["",{"text":"[","color":"black"},{"text":"Fails: ","color":"green"},{"score":{"name":"@s","objective":"fails"},"color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=3}] if score @s fails < @s b_fails run tellraw @s {"text":"You got a new fail record","color":"yellow"}
execute as @a[scores={win_timer=3}] if score @s fails < @s b_fails run scoreboard players operation @s b_fails = @s fails

#tick 3 jumps
execute as @a[scores={win_timer=4}] if score @s jumps matches ..300 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"S++/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 301..350 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"S/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 351..420 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"A/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 421..500 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"B/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 501..600 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"C/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 601..700 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"D/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 701..800 run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"E/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 801.. run title @s title ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"F/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches ..300 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"S++/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 301..350 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"S/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 351..420 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"A/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 421..500 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"B/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 501..600 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"C/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 601..700 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"D/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 701..800 run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"E/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] if score @s jumps matches 801.. run tellraw @s ["",{"text":"Jump Grade: ","color":"dark_green"},{"text":"F/S++","italic":true,"underlined":true,"color":"dark_green"}]
execute as @a[scores={win_timer=4}] run title @s subtitle ["",{"text":"[","color":"black"},{"text":"Jumps: ","color":"green"},{"score":{"name":"@s","objective":"jumps"},"color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=4}] run tellraw @s ["",{"text":"[","color":"black"},{"text":"Jumps: ","color":"green"},{"score":{"name":"@s","objective":"jumps"},"color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=4}] if score @s jumps < @s b_jumps run tellraw @s {"text":"You got a new jump record","color":"yellow"}
execute as @a[scores={win_timer=4}] if score @s jumps < @s b_jumps run scoreboard players operation @s b_jumps = @s jumps

#tick 4 times completed, attempts and rank and calc score
execute as @a[scores={win_timer=5}] run scoreboard players set @s attempt_score 20000
execute as @a[scores={win_timer=5}] run scoreboard players operation @s attempt_score -= @s total_timer
execute as @a[scores={win_timer=5}] run scoreboard players operation @s attempt_score -= @s jumps
execute as @a[scores={win_timer=5}] run scoreboard players operation @s attempt_score -= @s jumps
execute as @a[scores={win_timer=5}] run scoreboard players operation @s fails *= !30 math
execute as @a[scores={win_timer=5}] run scoreboard players operation @s attempt_score -= @s fails
execute as @a[scores={win_timer=5}] if score @s attempt_score matches ..-1 run scoreboard players set @s attempt_score 0

execute as @a[scores={win_timer=5}] if score @s times_completed matches ..1 run tellraw @s ["",{"text":"Parkour completed for the ","color":"dark_green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"dark_green"},{"text":"st","italic":true,"color":"dark_green"},{"text":" time","color":"dark_green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches 2 run tellraw @s ["",{"text":"Parkour completed for the ","color":"dark_green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"dark_green"},{"text":"nd","italic":true,"color":"dark_green"},{"text":" time","color":"dark_green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches 3 run tellraw @s ["",{"text":"Parkour completed for the ","color":"dark_green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"dark_green"},{"text":"rd","italic":true,"color":"dark_green"},{"text":" time","color":"dark_green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches 4.. run tellraw @s ["",{"text":"Parkour completed for the ","color":"dark_green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"dark_green"},{"text":"th","italic":true,"color":"dark_green"},{"text":" time","color":"dark_green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches ..1 run title @s subtitle ["",{"text":"Parkour completed for the ","color":"green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"green"},{"text":"st","italic":true,"color":"green"},{"text":" time","color":"green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches 2 run title @s subtitle ["",{"text":"Parkour completed for the ","color":"green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"green"},{"text":"nd","italic":true,"color":"green"},{"text":" time","color":"green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches 3 run title @s subtitle ["",{"text":"Parkour completed for the ","color":"green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"green"},{"text":"rd","italic":true,"color":"green"},{"text":" time","color":"green"}]
execute as @a[scores={win_timer=5}] if score @s times_completed matches 4.. run title @s subtitle ["",{"text":"Parkour completed for the ","color":"green"},{"score":{"name":"@s","objective":"times_completed"},"italic":true,"color":"green"},{"text":"th","italic":true,"color":"green"},{"text":" time","color":"green"}]
execute as @a[scores={win_timer=5}] run title @s title  ["",{"text":"[","color":"black"},{"text":"Attempts: ","color":"dark_green"},{"score":{"name":"@s","objective":"attempts"},"color":"dark_green"},{"text":"] [","color":"black"},{"text":"Score: ","color":"dark_green"},{"score":{"name":"@s","objective":"attempt_score"},"color":"dark_green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=5}] run tellraw @s  ["",{"text":"[","color":"black"},{"text":"Attempts: ","color":"green"},{"score":{"name":"@s","objective":"attempts"},"color":"green"},{"text":"] [","color":"black"},{"text":"Score: ","color":"green"},{"score":{"name":"@s","objective":"attempt_score"},"color":"green"},{"text":"]","color":"black"}]
execute as @a[scores={win_timer=5}] if score @s attempt_score > @s top_list run tellraw @s {"text":"You got a new highscore","color":"yellow"}
execute as @a[scores={win_timer=5}] if score @s attempt_score > @s top_list run scoreboard players operation @s top_list = @s attempt_score

#tick 5 exit
execute as @a[scores={win_timer=6}] run function we:pl_gm_exit

#again
execute if entity @a[scores={win_timer=1..5}] run schedule function we:pl_gm_win_sub 3s replace

#reset
tag @a remove new_tm_record


