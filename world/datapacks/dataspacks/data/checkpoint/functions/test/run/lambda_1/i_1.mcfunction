scoreboard players set chec.8fSYQudump tbms.value 0
execute if score chec.oPT32D_q5y tbms.value matches 1 run function checkpoint:test/run/lambda_1/i_1/i_0
execute if score chec.8fSYQudump tbms.value matches 0 if score chec.oPT32D_q5y tbms.value matches 0 run function checkpoint:test/run/lambda_1/i_1/i_2
execute if score chec.8fSYQudump tbms.value matches 0 run function checkpoint:test/run/lambda_1/i_0/i_3
