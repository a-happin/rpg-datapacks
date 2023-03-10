#> damage:reduce_by_epf/get_player_enchantments
#@within function damage:reduce_by_epf/

execute if data storage : _[-1].NBT.Inventory[{Slot: 100b}].tag.Enchantments[0] run data modify storage : _[-1].enchantments append from storage : _[-1].NBT.Inventory[{Slot: 100b}].tag.Enchantments[]
execute if data storage : _[-1].NBT.Inventory[{Slot: 101b}].tag.Enchantments[0] run data modify storage : _[-1].enchantments append from storage : _[-1].NBT.Inventory[{Slot: 101b}].tag.Enchantments[]
execute if data storage : _[-1].NBT.Inventory[{Slot: 102b}].tag.Enchantments[0] run data modify storage : _[-1].enchantments append from storage : _[-1].NBT.Inventory[{Slot: 102b}].tag.Enchantments[]
execute if data storage : _[-1].NBT.Inventory[{Slot: 103b}].tag.Enchantments[0] run data modify storage : _[-1].enchantments append from storage : _[-1].NBT.Inventory[{Slot: 103b}].tag.Enchantments[]
