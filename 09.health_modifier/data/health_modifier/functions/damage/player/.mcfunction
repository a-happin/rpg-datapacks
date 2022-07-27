#> health_modifier:damage/player/
#@within function health_modifier:damage/

execute unless entity @s[scores={health_modifier.health=1..}] run function health_modifier:damage/player/get_health
execute store result score $ health_modifier.health run data get storage : _[-2].damage 1024
scoreboard players operation @s health_modifier.health -= $ health_modifier.health
execute if entity @s[scores={health_modifier.health=1..},gamemode=!spectator,gamemode=!creative] run playsound entity.player.hurt player @a[distance=..16] ~ ~ ~
execute if entity @s[scores={health_modifier.health=..0}] run function health_modifier:damage/player/kill
