#> health_modifier:heal/
#@public
#@input
#  storage : _[-1].heal double: damage amount
#  storage : _[-1].NBT (optional) NBT cache of `@s`

execute if entity @s[type=player] run function health_modifier:heal/player/
execute if entity @s[type=!player] run function health_modifier:heal/non-player/
