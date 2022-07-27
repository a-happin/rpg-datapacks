#> health_modifier:damage/player/get_health
#@within function health_modifier:damage/player/

## NBT cache
execute if data storage : _[-2].NBT run data modify storage : _[-1].NBT set from storage : _[-2].NBT
execute unless data storage : _[-1].NBT.Health run data modify storage : _[-1].NBT set from entity @s

execute store result score $ health_modifier.health run data get storage : _[-1].NBT.Health 1024
scoreboard players operation @s health_modifier.health += $ health_modifier.health
