#> health_modifier:damage/non-player/substract_health
#@within function health_modifier:damage/non-player/

## (damage - Health) < 0 => Health = - (damage - Health)
execute store result score $ health_modifier.health run data get storage : nbt.Health 1024
scoreboard players operation $a health_modifier.health -= $ health_modifier.health
data modify storage : _[-1].result.Health set value 1e-9f
execute if score $a health_modifier.health matches ..-1 store result storage : _[-1].result.Health float -0.0009765625 run scoreboard players get $a health_modifier.health
execute if score $a health_modifier.health matches 0.. run function health_modifier:damage/non-player/kill
