#> health_modifier:damage/non-player/
#@within function health_modifier:damage/

#>
#@within function health_modifier:damage/non-player/**
  scoreboard objectives add health_modifier dummy

  execute store result score $ health_modifier run data get storage : _[-1].damage -1024
  data modify storage : _ append value {}
    data modify storage : _[-1].NBT set from entity @s
    execute if score $ health_modifier matches ..-1 if data storage : _[-1].NBT.AbsorptionAmount run function health_modifier:damage/non-player/substract_absorption_amount
    execute if score $ health_modifier matches ..-1 if data storage : _[-1].NBT.Health run function health_modifier:damage/non-player/substract_health
    execute if score $ health_modifier matches ..0 run function health_modifier:damage/non-player/kill
    execute unless data storage : _[-1].kill run function health_modifier:damage/non-player/apply_nbt
  data remove storage : _[-1]
scoreboard objectives remove health_modifier
