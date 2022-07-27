#> health_modifier:damage/non-player/substract_health
#@within function health_modifier:damage/non-player/

## (-damage + Health) > 0 => Health = (-damage + Health)
execute store success storage : _[-1].result.Health float 0.00048828125 store result score $ health_modifier.health run data get storage : _[-1].NBT.Health 1024
scoreboard players operation $ health_modifier += $ health_modifier.health
execute if score $ health_modifier matches 1.. store result storage : _[-1].result.Health float 0.0009765625 run scoreboard players get $ health_modifier
execute if score $ health_modifier matches ..0 run function health_modifier:damage/non-player/kill
