#> health_modifier:modify/lethal_damage
#@within function health_modifier:modify/kill

effect clear @s
execute unless entity @s[scores={health_modifier.hurt_time=1..9}] run effect give @s instant_damage 1 243 true
execute if entity @s[scores={health_modifier.hurt_time=9}] run effect give @s instant_damage 1 244 true
execute if entity @s[scores={health_modifier.hurt_time=8}] run effect give @s instant_damage 1 245 true
execute if entity @s[scores={health_modifier.hurt_time=7}] run effect give @s instant_damage 1 246 true
execute if entity @s[scores={health_modifier.hurt_time=6}] run effect give @s instant_damage 1 247 true
execute if entity @s[scores={health_modifier.hurt_time=5}] run effect give @s instant_damage 1 248 true
execute if entity @s[scores={health_modifier.hurt_time=4}] run effect give @s instant_damage 1 249 true
execute if entity @s[scores={health_modifier.hurt_time=3}] run effect give @s instant_damage 1 250 true
execute if entity @s[scores={health_modifier.hurt_time=2}] run effect give @s instant_damage 1 251 true
execute if entity @s[scores={health_modifier.hurt_time=1}] run effect give @s instant_damage 1 252 true
