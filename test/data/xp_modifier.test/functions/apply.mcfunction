#> xp_modifier.test:apply
#@within
#  function xp_modifier.test:handler/changed_level_by_vanilla
#  function xp_modifier.test:handler/changed_xp_by_vanilla

data modify storage : _ append value {a: [I; 0]}
  execute store result storage : _[-1].xp int 1 store result storage : _[-1].level int 1 run scoreboard players get @s mp
  execute store result storage : _[-1].xp_max int 1 run scoreboard players get @s mp_max
  function xp_modifier:apply
data remove storage : _[-1]
