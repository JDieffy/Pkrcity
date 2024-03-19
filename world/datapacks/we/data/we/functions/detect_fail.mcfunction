



#detect fail
execute if block ~ ~ ~ structure_void if entity @s[tag=!already_failed_28] run function we:set_failed_count_only
execute unless block ~ ~ ~ structure_void run tag @s add keep_tags
tag @s add keep_tags



