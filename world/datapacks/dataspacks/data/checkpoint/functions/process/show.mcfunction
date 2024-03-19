tellraw @a [{"text":"===[ Running Processes ]===","color":"green"}]
scoreboard players set chec.rDMf_yFOL3 tbms.value 0
scoreboard players set chec.WpfcwKNqW3 tbms.value 0
function checkpoint:parkour/main/__count__
execute if score chec.rDMf_yFOL3 tbms.value matches 1 run tellraw @a [{"text":" [ON] checkpoint.parkour.main.__count__","color":"green"}]
execute if score chec.rDMf_yFOL3 tbms.value matches 0 run tellraw @a [{"text":" [OFF] checkpoint.parkour.main.__count__","color":"red"}]
