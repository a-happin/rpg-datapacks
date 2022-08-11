#> health_modifier:modify/
#@within advancement health_modifier:modify

data modify storage : _ append value {a: [I; 0]}
  execute store result score $ health_modifier.health run attribute @s generic.max_health get 1024
  scoreboard players operation @s health_modifier.health < $ health_modifier.health
  execute store result storage : _[-1].a[0] long 4096 run scoreboard players operation $ health_modifier.health -= @s health_modifier.health

  execute store result score $ health_modifier.health run data get storage : _[-1].a[0]
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000080000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000080000 "health_modifier" -512 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000040000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000040000 "health_modifier" -256 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000020000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000020000 "health_modifier" -128 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000010000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000010000 "health_modifier" -64 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000008000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000008000 "health_modifier" -32 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000004000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000004000 "health_modifier" -16 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000002000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000002000 "health_modifier" -8 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000001000 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000001000 "health_modifier" -4 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000800 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000800 "health_modifier" -2 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000400 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000400 "health_modifier" -1 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000200 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000200 "health_modifier" -0.5 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000100 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000100 "health_modifier" -0.25 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000080 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000080 "health_modifier" -0.125 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000040 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000040 "health_modifier" -0.0625 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000020 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000020 "health_modifier" -0.03125 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000010 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000010 "health_modifier" -0.015625 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000008 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000008 "health_modifier" -0.0078125 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000004 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000004 "health_modifier" -0.00390625 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000002 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000002 "health_modifier" -0.001953125 add

  scoreboard players operation $ health_modifier.health += $ health_modifier.health
  execute if score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000001 "health_modifier" 0 add
  execute unless score $ health_modifier.health matches 0.. run attribute @s generic.max_health modifier add 8e0f1b8b-1819-4d0e-859a-000000000001 "health_modifier" -0.0009765625 add

  effect give @s instant_health 1 252 true

  ## calc relative_health
  scoreboard players remove @s health_modifier.health 1024
  execute if entity @s[scores={health_modifier.health=1..}] run scoreboard players set @s health_modifier.health 0
data remove storage : _[-1]
