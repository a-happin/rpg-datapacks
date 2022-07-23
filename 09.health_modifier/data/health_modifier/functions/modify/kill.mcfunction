#> health_modifier:modify/kill
#@within function health_modifier:modify/

scoreboard players reset @s health_modifier.health
advancement revoke @s only health_modifier:modify

execute if entity @s[predicate=health_modifier:has_totem] run function health_modifier:modify/lethal_damage
execute unless entity @s[predicate=health_modifier:has_totem] run function health_modifier:modify/kill_impl
