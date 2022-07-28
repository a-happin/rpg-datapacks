#> health_modifier:damage/non-player/lethal_damage
#@within function health_modifier:damage/non-player/kill

## 124 % 32 == 28, 113 % 32 == 17
data modify storage : _[-1].result.ActiveEffects set value [{Id: 7, Amplifier: 124b, Duration: 1, ShowParticles: 0b}, {Id: 11, Amplifier: -1b, Duration: 0, ShowParticles: 0b}]
execute if entity @s[type=#health_modifier:undead] store result storage : _[-1].result.ActiveEffects[0].Id int 0.9999999999 run data get storage : _[-1].result.ActiveEffects[0].Id
execute store result score $a health_modifier.health run data get storage : _[-1].NBT.HurtTime
execute unless score $a health_modifier.health matches 2..10 run scoreboard players set $a health_modifier.health 11
execute store result storage : _[-1].result.ActiveEffects[0].Amplifier byte -1 run scoreboard players remove $a health_modifier.health 126
