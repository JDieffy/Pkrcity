function checkpoint:parkour/main/onstop
scoreboard players operation chec.AMtJoVwV_D tbms.value = chec.x7YpvBLVxQ tbms.value
scoreboard players operation chec.XrH6JIpIao tbms.value = chec.hWmhUuEsmS tbms.value
execute if score chec.hWmhUuEsmS tbms.value = chec.hWmhUuEsmS tbms.value run function checkpoint:__multiplex__/function_from__to__func
scoreboard players set chec.hWmhUuEsmS tbms.value -1
