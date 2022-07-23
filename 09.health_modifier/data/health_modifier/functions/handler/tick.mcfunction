#> health_modifier:handler/tick
#@within tag/function player:tick

execute if entity @s[advancements={health_modifier:modify=true}] run function health_modifier:modify/reset
