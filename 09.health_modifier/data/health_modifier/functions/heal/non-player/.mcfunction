#> health_modifier:heal/non-player/
#@within function health_modifier:heal/

## NBT cache
execute if data storage : _[-1].NBT store result score $ health_modifier.health run data get storage : _[-1].NBT.Health 1024
execute unless data storage : _[-1].NBT store result score $ health_modifier.health run data get entity @s Health 1024

execute store result score $a health_modifier.health run data get storage : _[-1].heal 1024
execute store result entity @s Health float 0.0009765625 run scoreboard players operation $a health_modifier.health += $ health_modifier.health
