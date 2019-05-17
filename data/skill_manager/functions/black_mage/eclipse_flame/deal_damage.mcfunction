##############################
### エクリプスフレイムダメージ付与
##############################

### [[Obsolete]]
# execute facing entity @e[distance=..10,tag=EclipseFlameParticle,sort=nearest,limit=1] feet positioned ^ ^ ^1 facing entity @e[distance=..11,tag=EclipseFlameCore,limit=1] feet positioned ^ ^ ^32 run scoreboard players operation @s[distance=..32] Damage > $Damage Global

function calc_manager:get/distance
execute if score $Distance Global <= $Radius Global run scoreboard players operation @s Damage > $Damage Global
