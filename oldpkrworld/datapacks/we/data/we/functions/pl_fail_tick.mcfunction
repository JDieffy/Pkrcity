



#runs as player every tick that is in fail
#tags
tag @s add me
execute as @e[tag=pl_entity] if score @s id = @a[tag=me,limit=1] id run tag @s add this

#detect if no target
execute unless entity @e[tag=this,tag=spec_stand] run function we:pl_gm_restart

#tp facing goal
execute as @e[tag=this,tag=spec_stand] at @s if entity @e[distance=..20,tag=this,tag=pl_saved_pos] anchored eyes rotated as @e[tag=this,tag=pl_saved_pos] positioned ^ ^ ^5 rotated as @s positioned ^ ^ ^40 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=this,tag=spec_stand] at @s facing entity @e[tag=this,tag=pl_saved_pos] eyes positioned ^ ^ ^0.9 rotated as @s run tp @s ~ ~ ~ ~ ~

#spectate
spectate @e[tag=this,tag=spec_stand,limit=1] @s

#get selected slot
execute store result score !test math run data get entity @s SelectedItemSlot 1

#detect reached goal
execute if entity @e[distance=..1,tag=this,tag=pl_saved_pos] run function we:pl_fail_exit

#reset
tag @e[tag=this] remove this
tag @s remove me


