#> health_modifier.test:example/damage/20
#@user


data modify storage : _ append value {damage: 20d, death_message: '{"text": "はカスタムダメージによって死んだ"}'}
  function health_modifier:damage/
data remove storage : _[-1]
