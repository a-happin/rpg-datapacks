#> health_modifier:damage/player/lethal_damage
#@within function health_modifier:damage/player/kill

scoreboard players set @s health_modifier.health 0

## NBT cache
execute unless data storage : _[-1].NBT if data storage : _[-2].NBT run data modify storage : _[-1].NBT set from storage : _[-2].NBT
execute unless data storage : _[-1].NBT.HurtTime run data modify storage : _[-1].NBT set from entity @s

## ダメージはHurtTimeの減算後に入る？ので1引く
execute store result storage : _[-1].switch.case int 0.9999999999 run data get storage : _[-1].NBT.HurtTime

## トーテム発動時にどうせeffectが消えるので消す(resistanceが消えれば良い)
effect clear @s
execute if data storage : _[-1].switch{case: 0} run effect give @s instant_damage 1 243 true
execute if data storage : _[-1].switch{case: 9} run effect give @s instant_damage 1 244 true
execute if data storage : _[-1].switch{case: 8} run effect give @s instant_damage 1 245 true
execute if data storage : _[-1].switch{case: 7} run effect give @s instant_damage 1 246 true
execute if data storage : _[-1].switch{case: 6} run effect give @s instant_damage 1 247 true
execute if data storage : _[-1].switch{case: 5} run effect give @s instant_damage 1 248 true
execute if data storage : _[-1].switch{case: 4} run effect give @s instant_damage 1 249 true
execute if data storage : _[-1].switch{case: 3} run effect give @s instant_damage 1 250 true
execute if data storage : _[-1].switch{case: 2} run effect give @s instant_damage 1 251 true
execute if data storage : _[-1].switch{case: 1} run effect give @s instant_damage 1 252 true

# execute unless entity @s[scores={health_modifier.hurt_time=1..9}] run effect give @s instant_damage 1 243 true
# execute if entity @s[scores={health_modifier.hurt_time=9}] run effect give @s instant_damage 1 244 true
# execute if entity @s[scores={health_modifier.hurt_time=8}] run effect give @s instant_damage 1 245 true
# execute if entity @s[scores={health_modifier.hurt_time=7}] run effect give @s instant_damage 1 246 true
# execute if entity @s[scores={health_modifier.hurt_time=6}] run effect give @s instant_damage 1 247 true
# execute if entity @s[scores={health_modifier.hurt_time=5}] run effect give @s instant_damage 1 248 true
# execute if entity @s[scores={health_modifier.hurt_time=4}] run effect give @s instant_damage 1 249 true
# execute if entity @s[scores={health_modifier.hurt_time=3}] run effect give @s instant_damage 1 250 true
# execute if entity @s[scores={health_modifier.hurt_time=2}] run effect give @s instant_damage 1 251 true
# execute if entity @s[scores={health_modifier.hurt_time=1}] run effect give @s instant_damage 1 252 true
