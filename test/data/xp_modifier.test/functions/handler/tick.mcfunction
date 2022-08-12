#> xp_modifier.test:handler/tick
#@within tag/function player:tick

#>
#@within
#  function xp_modifier.test:handler/tick
#  function xp_modifier.test:handler/changed_level_by_vanilla
  #declare score_holder $

execute if entity @s[scores={xp=1..}] run function xp_modifier.test:handler/changed_xp_by_vanilla
execute store result score $ mp run experience query @s levels
execute unless score @s mp = $ mp run function xp_modifier.test:handler/changed_level_by_vanilla
