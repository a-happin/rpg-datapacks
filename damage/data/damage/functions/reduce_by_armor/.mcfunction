#> damage:reduce_by_armor/
#@within function damage:
#@input
#  storage : _[-1].damage double: the amount of damage: 0 <= damage <= 17179869 (精度: damage < 168のとき、0.5単位, damage >= 168のとき、1単位)
#  attribute @s generic.armor: 防具値: 0 <= armor <= 30 (精度: damage < 168のとき、0.0001単位, damage >= 168のとき、1単位)
#  attribute @s generic.armor_toughness: 防具強度: 0 <= toughness <= 20 (精度: 1単位)

## NOTE:
## 5 * damage > armor * (8 + toughness) を満たしていれば強い攻撃
## armor <= 30 && toughness <= 20 より、 damage >= 168 なら確実に強い攻撃

execute store result score $ _damage run data get storage : _[-1].damage
execute if score $ _damage matches 168.. run function damage:reduce_by_armor/over168
execute unless score $ _damage matches 168.. run function damage:reduce_by_armor/under168
