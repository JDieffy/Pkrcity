scoreboard players set chec.VZ8OD2rHC9 tbms.value 0
execute if score chec.LwaLkMqxRF tbms.value < @s timer.maxlevel run function checkpoint:parkour/time/setlevel/i_0
execute if score chec.VZ8OD2rHC9 tbms.value matches 0 run scoreboard players operation @s timer.level = @s timer.maxlevel
