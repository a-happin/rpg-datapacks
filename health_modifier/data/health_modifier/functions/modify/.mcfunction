#> health_modifier:modify/
#@within advancement health_modifier:modify

# tellraw @a [{"text": "Debug» ", "color": "green"}, "health_modifier:modify/» ", {"nbt": "HurtTime", "entity": "@s"}, ", ", {"score": {"name": "@s", "objective": "health_modifier.hurt_time"}}]
execute if entity @s[scores={health_modifier.health=..0}] run function health_modifier:modify/kill
execute if entity @s[scores={health_modifier.health=1..}] run function health_modifier:modify/impl
