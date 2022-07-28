#> health_modifier.test:example/heal/2
#@user

data modify storage : _ append value {heal: 2}
  function health_modifier:heal/
data remove storage : _[-1]
