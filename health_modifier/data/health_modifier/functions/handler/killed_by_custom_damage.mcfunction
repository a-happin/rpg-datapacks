#> health_modifier:handler/killed_by_custom_damage
#@within advancement health_modifier:handler/killed_by_custom_damage

advancement revoke @s only health_modifier:handler/killed_by_custom_damage
tellraw @a [{"selector": "@s"}, "はカスタムダメージによって死んだ"]
