#> health_modifier:damage/non-player/substract_absorption_amount
#@within function health_modifier:damage/non-player/

## (-damage + AbsorptionAmount) > 0 => AbsorptionAmount = (-damage + AbsorptionAmount)
execute store result storage : _[-1].result.AbsorptionAmount float 0 store result score $ health_modifier.health run data get storage : _[-1].NBT.AbsorptionAmount 1024
scoreboard players operation $a health_modifier.health += $ health_modifier.health
execute if score $a health_modifier.health matches 1.. store result storage : _[-1].result.AbsorptionAmount float 0.0009765625 run scoreboard players get $a health_modifier.health
