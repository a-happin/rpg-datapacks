#> health_modifier:damage/player/show_death_message
#@within function health_modifier:damage/player/kill_impl

gamerule showDeathMessages false
kill @s
gamerule showDeathMessages true
tellraw @a [{"selector": "@s"}, {"storage": ":", "nbt": "_[-2].death_message", "interpret": true}]
