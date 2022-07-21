#> health_modifier:tick
#@within tag/function tick

execute as @a[scores={health_modifier.hurt_time=1..}] run function health_modifier:tick/decrease_hurt_time
execute as @a[advancements={health_modifier:modify=true}] run function health_modifier:modify/reset
