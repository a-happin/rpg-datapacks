#> xp_modifier.test:apply
#@within function xp_modifier.test:handler/tick

execute store result score @s xp_modifier.xp run scoreboard players operation @s xp_modifier.level = @s level
function xp_modifier:apply
scoreboard players reset @s level
