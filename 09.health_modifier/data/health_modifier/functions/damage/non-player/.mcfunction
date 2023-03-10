#> health_modifier:damage/non-player/
#@within function health_modifier:damage/

data modify storage : _ append value {result: {}}
  ## NBT cache
  execute unless data storage : nbt run data modify storage : nbt set from entity @s

  execute store result score $a health_modifier.health run data get storage : _[-2].damage 1024
  execute if score $a health_modifier.health matches 1.. if data storage : nbt.AbsorptionAmount run function health_modifier:damage/non-player/substract_absorption_amount/
  execute if score $a health_modifier.health matches 1.. if data storage : nbt.Health run function health_modifier:damage/non-player/substract_health
  execute unless data storage : _[-1].kill run function health_modifier:damage/non-player/apply_nbt
data remove storage : _[-1]
