#> damage:reduce_by_epf/add_epf/protection/
#@within function damage:reduce_by_epf/

data modify storage : _[-1].list append from storage : _[-1].enchantments[{id: "minecraft:protection"}].lvl
function damage:reduce_by_epf/add_epf/protection/loop
