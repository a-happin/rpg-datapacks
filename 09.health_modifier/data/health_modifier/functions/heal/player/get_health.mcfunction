#> health_modifier:heal/player/get_health
#@within function health_modifier:heal/player/

## NBT cache
execute if data storage : _[-1].NBT.Health store result score $ health_modifier.health run data get storage : _[-1].NBT.Health 1024
execute unless data storage : _[-1].NBT.Health store result score $ health_modifier.health run data get entity @s Health 1024

scoreboard players operation @s health_modifier.health += $ health_modifier.health
