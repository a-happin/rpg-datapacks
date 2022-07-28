#> health_modifier.test:example/heal/10
#@user

data modify storage : _ append value {heal: 10}
  function health_modifier:heal/
data remove storage : _[-1]
