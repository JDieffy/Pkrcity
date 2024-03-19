function checkpoint:test/run/test/stop
execute unless score chec.oPcvZAeFxc tbms.value = chec.DsGbPPnNXF tbms.value run tellraw @a [{"text":"[ Warning ! ]","color":"dark_red"},{"text":" One or more of the tests did not succeded. This will impact gameplay. Make sure to be playing on the correct Minecraft Version. Also the type of server might be causing the bug(s).","color":"red"}]
execute if score chec.oPcvZAeFxc tbms.value = chec.DsGbPPnNXF tbms.value run tellraw @a [{"text":"All tests succeded. You should be good to play.","color":"green"}]
scoreboard players operation chec.XrH6JIpIao tbms.value = chec.TyqXioX0UO tbms.value
execute if score chec.TyqXioX0UO tbms.value = chec.TyqXioX0UO tbms.value run function checkpoint:__multiplex__/function_from__to__func
