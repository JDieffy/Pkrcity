



#runs as player that reached respawn location
#exit spec
gamemode adventure @s
kill @e[tag=this,tag=spec_stand]

#tp to goal
execute at @e[tag=this,tag=pl_saved_pos] run tp @s ~ ~-1 ~ ~ ~

#tags
tag @s remove clicked

#score
scoreboard players set @s ypos_old -99
scoreboard players set @s fail_timer 0



