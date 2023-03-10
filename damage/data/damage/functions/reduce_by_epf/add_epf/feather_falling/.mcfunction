#> damage:reduce_by_epf/add_epf/feather_falling/
#@within function damage:reduce_by_epf/

data modify storage : _[-1].list append from storage : _[-1].enchantments[{id: "minecraft:feather_falling"}].lvl
function damage:reduce_by_epf/add_epf/feather_falling/loop
