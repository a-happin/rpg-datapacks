#> health_modifier:modify/
#@within advancement health_modifier:modify

execute if entity @s[scores={health_modifier.health=..0}] run function health_modifier:modify/kill
execute if entity @s[scores={health_modifier.health=1..}] run function health_modifier:modify/impl
