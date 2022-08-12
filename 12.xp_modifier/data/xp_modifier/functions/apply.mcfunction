#> xp_modifier:apply
#@public
#@input
#  storage : _[-1].a [I; int]
#  storage : _[-1].level int (>= 0)
#  storage : _[-1].xp int (>= 0)
#  storage : _[-1].xp_max int (> 0)
#@output
#  experience
#  storage : _[-1].a (garbage)

## setup
# data modify storage : _[-1].a set value [I; 1]

#>
#@private
  scoreboard objectives add xp_modifier dummy
  #declare score_holder $

  ## Lv.46の経験値ポイントは0~255
  experience set @s 46 levels
  experience set @s 255 points
  execute store result score $ xp_modifier run data get storage : _[-1].xp
  execute store result score @s xp_modifier run data get storage : _[-1].xp_max
  execute store result storage : _[-1].a[0] long 255 run scoreboard players operation $ xp_modifier < @s xp_modifier
  execute store result score $ xp_modifier run data get storage : _[-1].a[0]
  execute store result storage : _[-1].a[0] long 16777216 run scoreboard players operation $ xp_modifier /= @s xp_modifier
  execute store result score $ xp_modifier run data get storage : _[-1].a[0]
  execute if score $ xp_modifier matches 0.. run experience add @s -128 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -64 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -32 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -16 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -8 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -4 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -2 points

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -1 points


  ## `storage : _[-1].level`をエンチャントレベルに代入
  ## レベルを足すとレベルアップ音が鳴るので上限から引く
  ## 上限 - (上限 - level) = level
  experience set @s 2147483647 levels
  execute store result score $ xp_modifier run data get storage : _[-1].level
  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -1073741824 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -536870912 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -268435456 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -134217728 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -67108864 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -33554432 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -16777216 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -8388608 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -4194304 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -2097152 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -1048576 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -524288 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -262144 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -131072 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -65536 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -32768 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -16384 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -8192 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -4096 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -2048 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -1024 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -512 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -256 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -128 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -64 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -32 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -16 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -8 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -4 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -2 levels

  scoreboard players operation $ xp_modifier += $ xp_modifier
  execute if score $ xp_modifier matches 0.. run experience add @s -1 levels

scoreboard objectives remove xp_modifier
