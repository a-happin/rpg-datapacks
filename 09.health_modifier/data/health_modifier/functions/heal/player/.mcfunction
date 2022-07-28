#> health_modifier:heal/player/
#@within function health_modifier:heal/

execute unless entity @s[scores={health_modifier.health=1..}] run function health_modifier:heal/player/get_health
execute store result score $ health_modifier.health run data get storage : _[-1].heal 1024
scoreboard players operation @s health_modifier.health += $ health_modifier.health
