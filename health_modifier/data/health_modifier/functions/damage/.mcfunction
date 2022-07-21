#> health_modifier:damage/
#@public

function health_modifier:get_health/
execute store result score $ health_modifier.health run data get storage : _[-1].damage 1024
scoreboard players operation @s health_modifier.health -= $ health_modifier.health
