#> health_modifier:damage/non-player/kill
#@within function health_modifier:damage/non-player/substract_health

execute if entity @s[predicate=!health_modifier:has_totem] run data modify storage : _[-1].kill set value 1b
execute unless data storage : _[-1].kill run function health_modifier:damage/non-player/lethal_damage
execute if data storage : _[-1].kill run kill @s
