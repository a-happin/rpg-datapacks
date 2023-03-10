#> damage:
#@public
#@input
#  storage : _[-1].damage double ダメージ量
#  storage : _[-1].if.bypasses_armor bool 防具を貫通するかどうか(default: false)
#  storage : _[-1].if.bypasses_epf bool 軽減系エンチャントを貫通するかどうか(default: false)
#  storage : _[-1].if.bypasses_resistance bool 耐性エフェクトを貫通するかどうか(default: false)
#  storage : _[-1].if.is_fire bool 火炎耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-1].if.is_projectile bool 飛び道具耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-1].if.is_explosion bool 爆発耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-1].if.is_fall bool 落下耐性エンチャントで軽減できるかどうか(default: false)
#  storage : _[-1].NBT Optional NBT NBT of `@s` (cache)

#>
#@within damage:**
  scoreboard objectives add _damage dummy
  #declare score_holder $
  #declare score_holder $a

  data modify storage : _ append value {}
    data modify storage : _[-1].damage set from storage : _[-2].damage
    execute if data storage : _[-2].NBT run data modify storage : _[-1].NBT set from storage : _[-2].NBT
    execute unless data storage : _[-2].if{bypasses_armor: 1b} run function damage:reduce_by_armor/
    execute unless data storage : _[-2].if{bypasses_epf: 1b} if entity @s[predicate=damage:has_enchanted_equipment] run function damage:reduce_by_epf/
  data remove storage : _[-1]
scoreboard objectives remove _damage
