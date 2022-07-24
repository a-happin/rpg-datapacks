#> health_modifier:damage/
#@public

execute if entity @s[type=player] run function health_modifier:damage/player/
execute if entity @s[type=!player] run function health_modifier:damage/non-player/
