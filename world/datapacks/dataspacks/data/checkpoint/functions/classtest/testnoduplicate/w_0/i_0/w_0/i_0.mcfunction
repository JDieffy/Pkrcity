execute store result score chec.qmq5wN.RCN tbms.value run data get entity @s UUID[0] 1
execute store result score chec.6OgUFpxGId tbms.value run data get entity @s UUID[1] 1
execute store result score chec.t1UcbO3C4r tbms.value run data get entity @s UUID[2] 1
execute store result score chec.B5sFrXGs3f tbms.value run data get entity @s UUID[3] 1
scoreboard players set chec.ALz.o2zbS0 tbms.value 0
execute if score chec.F0DIJdvgdy tbms.value = chec.qmq5wN.RCN tbms.value if score chec.p_NXVIkhsE tbms.value = chec.6OgUFpxGId tbms.value if score chec.wGvQ10Zav6 tbms.value = chec.t1UcbO3C4r tbms.value if score chec..PzaF7hURg tbms.value = chec.B5sFrXGs3f tbms.value run function checkpoint:classtest/testnoduplicate/w_0/i_0/w_0/i_0/i_0
execute if score chec.ALz.o2zbS0 tbms.value matches 0 if score chec.lZcwxTaibX tbms.value = @s chec.DxepEjFCLG run function checkpoint:classtest/testnoduplicate/w_0/i_0/w_0/i_0/i_2
