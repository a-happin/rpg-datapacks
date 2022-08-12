#> xp_modifier.test:handler/changed_xp_by_vanilla
#@within function xp_modifier.test:handler/tick

experience add @s -2147483648 points
function xp_modifier.test:apply
# scoreboard players reset @s xp
