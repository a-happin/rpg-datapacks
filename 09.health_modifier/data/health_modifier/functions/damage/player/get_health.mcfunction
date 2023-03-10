#> health_modifier:damage/player/get_health
#@within function health_modifier:damage/player/

## NBT cache
execute if data storage : nbt.Health store result score $ health_modifier.health run data get storage : nbt.Health 1024
execute unless data storage : nbt.Health store result score $ health_modifier.health run data get entity @s Health 1024

scoreboard players operation @s health_modifier.health += $ health_modifier.health
