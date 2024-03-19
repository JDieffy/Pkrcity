


#do timer
title @s times 0 50 20
execute if entity @s[gamemode=!spectator] run scoreboard players add @s time_t 1
execute if entity @s[gamemode=!spectator] run scoreboard players add @s tick 1
execute if entity @s[scores={time_t=20..}] run scoreboard players add @s time_s 1
execute if entity @s[scores={time_t=20..}] run scoreboard players set @s time_t 0
execute if entity @s[scores={time_s=60..}] run scoreboard players add @s time_m 1
execute if entity @s[scores={time_s=60..}] run scoreboard players set @s time_s 0
execute if entity @s[scores={time_m=60..}] run scoreboard players add @s time_h 1
execute if entity @s[scores={time_m=60..}] run scoreboard players set @s time_m 0

#actionbar
execute if score @s[gamemode=!spectator] time_t matches ..9 if score @s title_timer matches ..0 run title @s actionbar ["",{"text":"[Jumps: ","color":"dark_green"},{"score":{"name":"@s","objective":"jump"},"color":"dark_green"},{"text":"]","color":"dark_green"},{"text":" [Time: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_h"},"color":"dark_aqua"},{"text":"h,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_m"},"color":"dark_aqua"},{"text":"m,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_s"},"color":"dark_aqua"},{"text":"s,0","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_t"},"color":"dark_aqua"},{"text":"t]","color":"dark_aqua"},{"text":" [Fails: ","color":"dark_purple"},{"score":{"name":"@s","objective":"fail"},"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
execute if score @s[gamemode=!spectator] time_t matches 10.. if score @s title_timer matches ..0 run title @s actionbar ["",{"text":"[Jumps: ","color":"dark_green"},{"score":{"name":"@s","objective":"jump"},"color":"dark_green"},{"text":"]","color":"dark_green"},{"text":" [Time: ","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_h"},"color":"dark_aqua"},{"text":"h,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_m"},"color":"dark_aqua"},{"text":"m,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_s"},"color":"dark_aqua"},{"text":"s,","color":"dark_aqua"},{"score":{"name":"@s","objective":"time_t"},"color":"dark_aqua"},{"text":"t]","color":"dark_aqua"},{"text":" [Fails: ","color":"dark_purple"},{"score":{"name":"@s","objective":"fail"},"color":"dark_purple"},{"text":"]","color":"dark_purple"}]
execute if score @s[gamemode=!spectator] title_timer matches 1.. run scoreboard players remove @s title_timer 1

#map completed
execute positioned 67.47 65.00 76.51 if entity @s[tag=intimer,gamemode=!spectator,distance=0..2] at @s run function we:parkour_win

#hotbar items
item replace entity @s hotbar.3 with totem_of_undying{display:{Name:'[{"text":"Restart","italic":false,"color":"dark_red"},{"text":" "},{"text":"[Drop]","color":"red"}]'}} 1
item replace entity @s hotbar.4 with written_book{display:{Name:'[{"text":"Information","color":"dark_aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":" [Right Click]","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]'},pages:['["",{"text":"Time Grades","color":"dark_aqua"},{"text":"\\n","color":"reset"},{"text":"S = 6m 30s\\nA = 7m\\nB = 10m\\nC = 15m\\nD = 20min\\nE = 30min","color":"aqua"},{"text":"\\n","color":"reset"},{"text":"Fail Grades","color":"dark_purple"},{"text":"\\n","color":"reset"},{"text":"S = 0\\nA = 4\\nB = 10\\nC = 20\\nD = 40\\nE = 100","color":"light_purple"}]','["",{"text":"Jump Grades","color":"dark_green"},{"text":"\\n","color":"reset"},{"text":"S = 360\\nA = 430\\nB = 500\\nC = 600\\nD = 700\\nE = 800","color":"green"},{"text":"\\n\\n","color":"reset"},{"text":"Lime carpets give jump boost! Good luck and have fun!","color":"gray"},{"text":"\\n\\nType /trigger lobby to return to the lobby","color":"dark_gray"}]'],title:"",author:"Zombie1111 and _Elton"}
item replace entity @s hotbar.5 with clock{display:{Name:'[{"text":"Last Checkpoint","italic":false,"color":"gold"},{"text":" "},{"text":"[Drop]","color":"yellow"}]'}} 1
item replace entity @s hotbar.8 with nether_star{display:{Name:'[{"text":"Ghost Mode","italic":false,"color":"gray"},{"text":" "},{"text":"[Drop]","color":"white"}]'}} 1






