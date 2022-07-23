#> health_modifier.test:handler/entity_hurt_player
#@within advancement health_modifier.test:handler/entity_hurt_player

advancement revoke @s only health_modifier.test:handler/entity_hurt_player
data modify storage : _ append value {}
  data modify storage : _[-1].HurtTime set from entity @s HurtTime
  # function health_modifier.test:example1
data remove storage : _[-1]
