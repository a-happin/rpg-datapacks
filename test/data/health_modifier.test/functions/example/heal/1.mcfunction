#> health_modifier.test:example/heal/1
#@user

data modify storage : _ append value {heal: 1}
  function health_modifier:heal/
data remove storage : _[-1]
