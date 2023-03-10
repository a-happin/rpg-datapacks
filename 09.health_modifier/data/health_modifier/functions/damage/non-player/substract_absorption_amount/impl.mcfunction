#> health_modifier:damage/non-player/substract_absorption_amount/impl
#@within function health_modifier:damage/non-player/substract_absorption_amount/

## (damage - AbsorptionAmount) < 0 => AbsorptionAmount = - (damage - AbsorptionAmount)
scoreboard players operation $a health_modifier.health -= $ health_modifier.health
data modify storage : _[-1].result.AbsorptionAmount set value 0f
execute if score $a health_modifier.health matches ..-1 store result storage : _[-1].result.AbsorptionAmount float -0.0009765625 run scoreboard players get $a health_modifier.health
