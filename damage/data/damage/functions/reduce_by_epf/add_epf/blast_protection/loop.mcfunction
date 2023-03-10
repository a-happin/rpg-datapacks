#> damage:reduce_by_epf/add_epf/blast_protection/loop
#@within function damage:reduce_by_epf/add_epf/blast_protection/*

execute store result score $ _damage run data get storage : _[-1].list[-1] 2
data remove storage : _[-1].list[-1]
scoreboard players operation $a _damage -= $ _damage
execute if data storage : _[-1].list[-1] run function damage:reduce_by_epf/add_epf/blast_protection/loop
