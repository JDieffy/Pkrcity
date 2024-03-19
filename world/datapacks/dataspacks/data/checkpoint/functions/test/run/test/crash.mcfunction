tellraw @a ["",{"text":"[TBMS - Error]: ","color":"dark_red"},[{"text":"Stack Overlow detect in Process. Try to increase the maxCommandChainLength"}]]
scoreboard players add chec.d6kT1miXPo tbms.value 1
execute if score chec.d6kT1miXPo tbms.value matches 11.. run function checkpoint:test/run/test/crash/i_0
function checkpoint:test/run/test/run
