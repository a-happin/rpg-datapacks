#> xp_modifier:apply
#@public
#@input
#  score @s xp_modifier.level
#  score @s xp_modifier.xp
#  score @s xp_modifier.xp_max (!= 0)

scoreboard players operation @s xp_modifier.xp < @s xp_modifier.xp_max
scoreboard players set $ xp_modifier.xp 183
scoreboard players operation $ xp_modifier.xp *= @s xp_modifier.xp
scoreboard players operation $ xp_modifier.xp /= @s xp_modifier.xp_max

experience set @s 38 levels
experience set @s 0 points

scoreboard players operation $ xp_modifier.xp *= $2^24 xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 128 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 64 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 32 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 16 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 8 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 4 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 2 points

scoreboard players operation $ xp_modifier.xp += $ xp_modifier.xp
execute if score $ xp_modifier.xp matches ..-1 run experience add @s 1 points


## `score @s xp_modifier.level`をエンチャントレベルに代入
## レベルを足すとレベルアップ音が鳴るので上限から引く
## 上限 - (上限 - level) = level
experience set @s 2147483647 levels
scoreboard players set $ xp_modifier.level 2147483647
scoreboard players operation $ xp_modifier.level -= @s xp_modifier.level

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -1073741824 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -536870912 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -268435456 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -134217728 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -67108864 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -33554432 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -16777216 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -8388608 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -4194304 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -2097152 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -1048576 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -524288 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -262144 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -131072 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -65536 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -32768 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -16384 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -8192 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -4096 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -2048 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -1024 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -512 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -256 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -128 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -64 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -32 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -16 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -8 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -4 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -2 levels

scoreboard players operation $ xp_modifier.level += $ xp_modifier.level
execute if score $ xp_modifier.level matches ..-1 run experience add @s -1 levels
