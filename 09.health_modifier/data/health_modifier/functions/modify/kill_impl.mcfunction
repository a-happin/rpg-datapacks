#> health_modifier:modify/kill_impl
#@within function health_modifier:modify/kill

advancement grant @s only health_modifier:handler/killed_by_custom_damage flag
data modify storage : _ append value {}
  execute store result storage : _[-1].if.cond byte 1 run gamerule showDeathMessages
  gamerule showDeathMessages false
  kill @s
  execute if data storage : _[-1].if{cond: 1b} run gamerule showDeathMessages true
data remove storage : _[-1]
