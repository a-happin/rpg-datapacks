#> health_modifier:damage/player/kill_impl
#@within function health_modifier:damage/player/kill

execute store result storage : _[-1].if.showDeathMessages byte 1 run gamerule showDeathMessages
execute if data storage : _[-1].if{showDeathMessages: 0b} run kill @s
execute if data storage : _[-1].if{showDeathMessages: 1b} run function health_modifier:damage/player/show_death_message
