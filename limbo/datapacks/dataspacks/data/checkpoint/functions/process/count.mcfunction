scoreboard players set chec.rDMf_yFOL3 tbms.value 0
scoreboard players set chec.WpfcwKNqW3 tbms.value 0
function checkpoint:__tags__/__process_count__
tellraw @a [{"text":"Process Running: "},{ "score":{ "name":"chec.rDMf_yFOL3","objective":"tbms.value"}},{"text":"/"},{ "score":{ "name":"chec.WpfcwKNqW3","objective":"tbms.value"}}]
