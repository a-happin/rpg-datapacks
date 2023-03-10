#> damage:reduce_by_epf/under83886
#@within function damage:reduce_by_epf/

execute store result score $ _damage run data get storage : _[-1].damage 1024
execute store result storage : _[-1].damage double 0.0000390625 run scoreboard players operation $ _damage *= $a _damage
