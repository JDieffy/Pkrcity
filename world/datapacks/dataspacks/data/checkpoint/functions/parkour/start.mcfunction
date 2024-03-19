scoreboard players set @s timer.hour 0
scoreboard players set @s timer.min 0
scoreboard players set @s timer.sec 0
scoreboard players set @s timer.tick 0
scoreboard players set @s timer.stat 0
scoreboard players set @s timer.global 0
scoreboard players set @s timer.sKill 0
scoreboard players set @s timer.sDeath 0
scoreboard players set @s timer.sLevels 0
scoreboard players set @s timer.sCheat 0
scoreboard players set @s timer.display 0
scoreboard players set @s timer.kill 0
scoreboard players set @s timer.level 0
scoreboard players set @s timer.maxlevel 0
scoreboard players set @s timer.death 0
scoreboard players set chec.0kMqm.iQjP tbms.value 1
function checkpoint:parkour/time/setdisplay
scoreboard players set @s timer.Level 1
scoreboard players operation chec.LwaLkMqxRF tbms.value = @s timer.Level
scoreboard players operation chec.yoZjSPQp9k tbms.value = levelNb tbms.value
scoreboard players set chec.akViPuZuol tbms.value 1
scoreboard players set chec._6HJuMkvbD tbms.value 1
function checkpoint:parkour/time/start
scoreboard players operation chec.LwaLkMqxRF tbms.value = @s timer.Level
function checkpoint:parkour/main/start
