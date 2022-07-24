#> health_modifier.test:example10_5/
#@user

#>
#@within health_modifier.test:example10_5/**
  #declare tag example_damage

tag @s add example_damage
schedule function health_modifier.test:example10_5/schedule 1t append
schedule function health_modifier.test:example10_5/schedule 2t append
schedule function health_modifier.test:example10_5/schedule 3t append
schedule function health_modifier.test:example10_5/schedule 4t append
schedule function health_modifier.test:example10_5/schedule 5t append
schedule function health_modifier.test:example10_5/reset 5t append
