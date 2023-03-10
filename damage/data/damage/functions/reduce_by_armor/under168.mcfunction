#> damage:reduce_by_armor/under168
#@within function damage:reduce_by_armor/

## scale = 10000
## scale2 = 10
## damage = damage * scale2 * (125 * scale - min (100 * scale, max (armor * scale, armor * scale * 5 - damage * scale * 20 / (toughness + 8)))) / (125 * scale * scale2)

#>
#@private
  #declare score_holder $a

## a = damage * scale * 20
execute store result score $a _damage run data get storage : _[-1].damage 200000

## $ = toughness + 8
execute store result score $ _damage run attribute @s generic.armor_toughness get
scoreboard players add $ _damage 8

## a /= $
scoreboard players operation $a _damage /= $ _damage

## $ = armor * scale * 5
execute store result score $ _damage run attribute @s generic.armor get 50000

## $ -= a
scoreboard players operation $ _damage -= $a _damage

## a = max (armor * scale, $)
execute store result score $a _damage run attribute @s generic.armor get 10000
scoreboard players operation $a _damage > $ _damage

## a = min (a, 100 * scale)
execute if score $a _damage matches 1000001.. run scoreboard players set $a _damage 1000000

## $ = 125 * scale
scoreboard players set $ _damage 1250000

## $ -= a
scoreboard players operation $ _damage -= $a _damage

## a = damage * scale2
execute store result score $a _damage run data get storage : _[-1].damage 10

## damage = a * $ / (125 * scale * scale2)
execute store result storage : _[-1].damage double 0.00000008 run scoreboard players operation $a _damage *= $ _damage
