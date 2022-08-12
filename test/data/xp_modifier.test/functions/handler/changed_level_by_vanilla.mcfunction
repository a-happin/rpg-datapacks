#> xp_modifier.test:handler/changed_level_by_vanilla
#@within function xp_modifier.test:handler/tick

execute store result score @s mp run scoreboard players operation $ mp < @s mp_max
function xp_modifier.test:apply
