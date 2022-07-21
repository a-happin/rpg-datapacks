#> health_modifier:handler/died
#@within tag/function player:died

advancement revoke @s only health_modifier:handler/entity_hurt_player
scoreboard players set @s health_modifier.hurt_time 0
