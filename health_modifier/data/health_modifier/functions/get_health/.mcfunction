#> health_modifier:get_health/
#@public

execute unless entity @s[scores={health_modifier.health=-2147483648..}] run function health_modifier:get_health/impl
