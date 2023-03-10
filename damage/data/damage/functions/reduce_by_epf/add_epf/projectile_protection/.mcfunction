#> damage:reduce_by_epf/add_epf/projectile_protection/
#@within function damage:reduce_by_epf/

data modify storage : _[-1].list append from storage : _[-1].enchantments[{id: "minecraft:projectile_protection"}].lvl
function damage:reduce_by_epf/add_epf/projectile_protection/loop
