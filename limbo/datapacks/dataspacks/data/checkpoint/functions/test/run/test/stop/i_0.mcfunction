function checkpoint:test/run/test/onstop
scoreboard players operation chec.aftvab.hou tbms.value = chec.x7YpvBLVxQ tbms.value
scoreboard players operation chec.XrH6JIpIao tbms.value = chec.TyqXioX0UO tbms.value
execute if score chec.TyqXioX0UO tbms.value = chec.TyqXioX0UO tbms.value run function checkpoint:__multiplex__/function_from__to__func
scoreboard players set chec.TyqXioX0UO tbms.value -1
