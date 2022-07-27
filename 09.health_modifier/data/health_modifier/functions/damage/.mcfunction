#> health_modifier:damage/
#@public
#@input
#  storage : _[-1].damage double: damage amount
#  storage : _[-1].death_message string of JSON
#  storage : _[-1].NBT (optional) NBT cache of `@s`

data modify storage : _ append value {}
  execute if entity @s[type=player] run function health_modifier:damage/player/
  execute if entity @s[type=!player] run function health_modifier:damage/non-player/
data remove storage : _[-1]
