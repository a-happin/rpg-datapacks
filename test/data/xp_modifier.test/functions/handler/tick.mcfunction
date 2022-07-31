#> xp_modifier.test:handler/tick
#@within tag/function player:tick

execute if entity @s[scores={level=-2147483648..}] run function xp_modifier.test:apply
