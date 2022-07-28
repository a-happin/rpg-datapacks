#> health_modifier.test:example/damage/1
#@user


data modify storage : _ append value {damage: 1d, death_message: '{"text": "はカスタムダメージによって死んだ"}'}
  function health_modifier:damage/
data remove storage : _[-1]
