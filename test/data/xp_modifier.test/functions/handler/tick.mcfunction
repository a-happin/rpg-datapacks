#> xp_modifier.test:handler/tick
#@within tag/function player:tick

#>
#@within
#  function xp_modifier.test:handler/tick
#  function xp_modifier.test:apply
  #declare score_holder $

execute store result score $ xp_modifier.level run experience query @s levels
execute unless score @s xp_modifier.level = $ xp_modifier.level run function xp_modifier.test:apply
