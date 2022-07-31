#> xp_modifier:load_once
#@within tag/function load_once

#>
#@public
  scoreboard objectives add xp_modifier.level dummy
  scoreboard objectives add xp_modifier.xp dummy
  scoreboard objectives add xp_modifier.xp_max dummy

scoreboard players set $2^24 xp_modifier.xp 16777216
