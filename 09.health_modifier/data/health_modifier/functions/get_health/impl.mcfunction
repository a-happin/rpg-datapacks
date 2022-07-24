#> health_modifier:get_health/impl
#@within function health_modifier:get_health/

execute store result score $ health_modifier.health run data get entity @s Health 1024
scoreboard players operation @s health_modifier.health += $ health_modifier.health
