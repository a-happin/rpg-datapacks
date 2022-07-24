#> health_modifier:damage/player/kill
#@within function health_modifier:damage/player/

data modify storage : _ append value {}
  execute if entity @s[predicate=health_modifier:has_totem] run data modify storage : _[-1].has_totem set value 1b
  execute if data storage : _[-1].has_totem run function health_modifier:damage/player/lethal_damage
  execute unless data storage : _[-1].has_totem run function health_modifier:damage/player/kill_impl
data remove storage : _[-1]
