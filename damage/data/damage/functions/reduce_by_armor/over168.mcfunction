#> damage:reduce_by_armor/over168
#@within function damage:reduce_by_armor/

## damage = damage * (1 - armor / 5 / 25)
## ⇔ damage = damage * (125 - armor) / 125

#>
#@private
  #declare score_holder $a

execute store result score $a _damage run attribute @s generic.armor get -1
scoreboard players add $a _damage 125

execute store result storage : _[-1].damage double 0.008 run scoreboard players operation $a _damage *= $ _damage
