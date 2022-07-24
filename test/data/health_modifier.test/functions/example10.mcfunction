#> health_modifier.test:example10
#@user


data modify storage : _ append value {damage: 10d, death_message: '{"text": "はカスタムダメージによって死んだ"}'}
  function health_modifier:damage/
data remove storage : _[-1]
