#> health_modifier:damage/non-player/apply_nbt
#@within function health_modifier:damage/non-player/

## 演出
effect give @s instant_health 1 31 true
effect give @s instant_damage 1 31 true

## NBT適用
data modify entity @s {} merge from storage : _[-1].result
