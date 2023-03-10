#> health_modifier:damage/non-player/substract_absorption_amount/
#@within function health_modifier:damage/non-player/

execute store result score $ health_modifier.health run data get storage : nbt.AbsorptionAmount 1024

## HPが2097151.99902以上の場合はinfとみなす
execute if score $ health_modifier.health matches 2147483647.. run scoreboard players set $a health_modifier.health 0
execute if score $ health_modifier.health matches ..2147483646 run function health_modifier:damage/non-player/substract_absorption_amount/impl
