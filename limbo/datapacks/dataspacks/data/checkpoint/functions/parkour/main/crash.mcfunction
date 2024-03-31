tellraw @a ["",{"text":"[TBMS - Error]: ","color":"dark_red"},[{"text":"Stack Overlow detect in Process. Try to increase the maxCommandChainLength"}]]
scoreboard players add chec.QHnh0Ui3zE tbms.value 1
execute if score chec.QHnh0Ui3zE tbms.value matches 11.. run function checkpoint:parkour/main/crash/i_0
function checkpoint:parkour/main/run
