#> health_modifier:damage/non-player/lethal_damage
#@within function health_modifier:damage/non-player/kill

## 115 % 32 == 19
## HurtTime: 0~1 => 115b
## 2 => 124b
## 3 => 123b
## ...
## n => 126 - n
data modify storage : _[-1].result.ActiveEffects set value [{Id: 7, Amplifier: 115b, Duration: 1, ShowParticles: 0b}, {Id: 11, Amplifier: -1b, Duration: 0, ShowParticles: 0b}]
execute if entity @s[type=#health_modifier:undead] run data modify storage : _[-1].result.ActiveEffects[0].Id set value 6
execute store result score $a health_modifier.health run data get storage : nbt.HurtTime
execute if score $a health_modifier.health matches 2..10 store result storage : _[-1].result.ActiveEffects[0].Amplifier byte -1 run scoreboard players remove $a health_modifier.health 126
