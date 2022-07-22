#> health_modifier:tick/decrease_hurt_time
#@within function health_modifier:tick

scoreboard players remove @s health_modifier.hurt_time 1
execute if entity @s[scores={health_modifier.hurt_time=..0}] run advancement revoke @s only health_modifier:handler/entity_hurt_player
