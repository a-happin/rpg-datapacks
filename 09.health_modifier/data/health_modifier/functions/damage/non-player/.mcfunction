#> health_modifier:damage/non-player/
#@within function health_modifier:damage/

data modify storage : _ append value {}
  ## NBT cache
  execute if data storage : _[-2].NBT run data modify storage : _[-1].NBT set from storage : _[-2].NBT
  execute unless data storage : _[-1].NBT run data modify storage : _[-1].NBT set from entity @s

  execute store result score $a health_modifier.health run data get storage : _[-2].damage -1024
  execute if score $a health_modifier.health matches ..-1 if data storage : _[-1].NBT.AbsorptionAmount run function health_modifier:damage/non-player/substract_absorption_amount
  execute if score $a health_modifier.health matches ..-1 if data storage : _[-1].NBT.Health run function health_modifier:damage/non-player/substract_health
  execute unless data storage : _[-1].kill run function health_modifier:damage/non-player/apply_nbt
data remove storage : _[-1]
