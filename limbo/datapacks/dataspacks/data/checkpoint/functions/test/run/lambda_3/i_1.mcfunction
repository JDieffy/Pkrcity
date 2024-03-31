scoreboard players set chec.UNP3A6JB32 tbms.value 0
execute if score chec.oPT32D_q5y tbms.value matches 1 run function checkpoint:test/run/lambda_3/i_1/i_0
execute if score chec.UNP3A6JB32 tbms.value matches 0 if score chec.oPT32D_q5y tbms.value matches 0 run function checkpoint:test/run/lambda_3/i_1/i_2
execute if score chec.UNP3A6JB32 tbms.value matches 0 run function checkpoint:test/run/lambda_3/i_0/i_3
