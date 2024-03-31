scoreboard players set chec.oPcvZAeFxc tbms.value 0
scoreboard players set chec._3Y7CL._ak tbms.value 0
scoreboard players set chec.DsGbPPnNXF tbms.value 0
tellraw @a [{"text":"====[ Starting TBMS Test Suite ]====","color":"green"}]
scoreboard players add chec.DsGbPPnNXF tbms.value 1
schedule function checkpoint:test/run/lambda_0 1t append
schedule function checkpoint:test/run/lambda_1 2t append
scoreboard players add chec.DsGbPPnNXF tbms.value 1
schedule function checkpoint:test/run/lambda_2 2t append
schedule function checkpoint:test/run/lambda_3 3t append
scoreboard players add chec.DsGbPPnNXF tbms.value 1
schedule function checkpoint:test/run/lambda_4 3t append
schedule function checkpoint:test/run/lambda_5 4t append
function checkpoint:test/run/test/start
function checkpoint:process/show

