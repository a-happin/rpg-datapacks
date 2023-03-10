#> health_modifier.test:example/damage/a/

# damage * (1 - min(20, max(defensePoints / 5, defensePoints - damage * 4 / (8 + toughness))) / 25) * (1 - (min(20, EPF) / 25)) * (1 - min(5, resistanceLv) / 5)

## damage
### 防具による軽減
##    damage *= 1 - min(20, max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))) / 25
## ⇔ damage *= 1 - min(20, max(defensePoints / 5, defensePoints - damage * 4 / (8 + toughness))) / 25
## ⇔ damage * 125 *= 125 - min(100, max(defensePoints, defensePoints * 5 - damage * 20 / (8 + toughness)))
## ⇔ damage * 1000 *= 1000 - min(20, max(defensePoints / 5, defensePoints - damage * 4 / (8 + toughness))) * 40
## damage1000 = damage * 1000 とおくと
##    damage1000 *= 1000 - min(20 * 40, max(defensePoints * 8, defensePoints * 40 - damage * 4 * 40 / (8 + toughness))

##    a = -4
##    a *= damage
##    b = toughness
##    b += 8
##
## max(defensePoints / 5, defensePoints - damage / (2 + toughness / 4))
## max(defensePoints * 2, defensePoints * 10 - damage * 5 - damage * toughness * 40) / 10
##

## defensePoints / 5 < defensePoints - damage / (2 + toughness / 4)
## defensePoints / 5 < defensePoints - damage * 4 / (8 + toughness)
## damage * 4 / (8 + toughness) < defensePoints - defensePoints / 5
## damage * 4 / (8 + toughness) < defensePoints * 4 / 5
## damage / (8 + toughness) < defensePoints / 5
## damage * 5 < defensePoints * (8 + toughness)
## damage * 20 < 4 * defensePoints * (8 + toughness)
## 5 * defensePoints - min(damage * 20, 4 * defensePoints * (8 + toughness)) / (8 + toughness)
## 25 * defensePoints - min(damage * 100, 20 * defensePoints * (8 + toughness)) / (8 + toughness)
