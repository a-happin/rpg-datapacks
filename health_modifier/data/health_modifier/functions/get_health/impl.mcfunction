#> health_modifier:get_health/impl
#@within function health_modifier:get_health/

execute store result score @s health_modifier.health run data get entity @s Health 1024
scoreboard players operation @s health_modifier.health += @s health_modifier.diff
scoreboard players set @s health_modifier.diff 0
