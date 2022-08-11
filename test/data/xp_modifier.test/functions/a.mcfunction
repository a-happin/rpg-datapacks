#> xp_modifier.test:a
#@user

data modify storage : _ append value {a: [I; 0], level: 190, xp: 190, xp_max: 200}
  function xp_modifier:apply
data remove storage : _[-1]
