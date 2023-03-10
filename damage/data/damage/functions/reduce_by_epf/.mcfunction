#> damage:reduce_by_epf/
# Enchantment Protection Factor によるダメージ軽減を行う
#@within function damage:
#@input
#  storage : _[-1].damage double amount of damage: 0 <= damage <= 85899345 (精度: damage < 83886のとき、1/1024単位, damage >= 83886のとき、1単位)
#  storage : _[-2].if.is_fire bool 火炎耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-2].if.is_projectile bool 飛び道具耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-2].if.is_explosion bool 爆発耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-2].if.is_fall bool 落下耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-1].NBT Optional NBT NBT cache of `@s`
#@output
#  storage : _[-1].damage
#  storage : _[-1].NBT NBT cache of `@s`
#  storage : _[-1].enchantments Enchantments
#  storage : _[-1].list (garbage)

## NBT cache
execute unless data storage : _[-1].NBT run data modify storage : _[-1].NBT set from entity @s

execute if entity @s[type=player] run function damage:reduce_by_epf/get_player_enchantments
execute if entity @s[type=!player] run data modify storage : _[-1].enchantments append from storage : _[-1].NBT.ArmorItems[].tag.Enchantments[]

scoreboard players set $a _damage 25
execute if data storage : _[-1].enchantments[{id: "minecraft:protection"}] run function damage:reduce_by_epf/add_epf/protection/
execute if data storage : _[-2].if{is_fire: 1b} if data storage : _[-1].enchantments[{id: "minecraft:fire_protection"}] run function damage:reduce_by_epf/add_epf/fire_protection/
execute if data storage : _[-2].if{is_fall: 1b} if data storage : _[-1].enchantments[{id: "minecraft:feather_falling"}] run function damage:reduce_by_epf/add_epf/feather_falling/
execute if data storage : _[-2].if{is_explosion: 1b} if data storage : _[-1].enchantments[{id: "minecraft:blast_protection"}] run function damage:reduce_by_epf/add_epf/blast_protection/
execute if data storage : _[-2].if{is_projectile: 1b} if data storage : _[-1].enchantments[{id: "minecraft:projectile_protection"}] run function damage:reduce_by_epf/add_epf/projectile_protection/

## a = max(a, 5)
execute if score $a _damage matches ..4 run scoreboard players set $a _damage 5

execute store result score $ _damage run data get storage : _[-1].damage
execute if score $ _damage matches 83886.. store result storage : _[-1].damage double 0.04 run scoreboard players operation $ _damage *= $a _damage
execute unless score $ _damage matches 83886.. run function damage:reduce_by_epf/under83886
