#> health_modifier:load_once
#@within tag/function load_once

#>
#@within * health_modifier:**
  scoreboard objectives add health_modifier.health dummy

## MEMO
## health_modifier.health (scale 1024)
## if matches 1.. => absolute_health
##   Healthになるべき値。modifyにて自動的にHealthを変更する
## if matches -1023..0 | matches undefined => relative_health
##   Healthに加算されるべき値。Healthの変更はされない。次回のHealth取得時に加算される。
