#> health_modifier.test:example1
#@user


data modify storage : _ append value {damage: 1d}
  execute as an_clover_ if entity @s[predicate=!player:is_dead] run function health_modifier:damage/
data remove storage : _[-1]
