#> player:trigger/using/shield/block
#前方のEnemyProjectileをブロック
function makeup:player/trigger/using/shield
kill @s[tag=!Enemy]
#敵の場合1ダメージ与えて反射
execute if entity @s[tag=Enemy,tag=SmartMotion] facing ^ ^ ^-1 run function smart_motion:core/tp
execute if entity @s[tag=Enemy,tag=!SmartMotion] facing ^ ^ ^-1 run tp @s ~ ~ ~ ~ ~
execute store result entity @s[tag=Enemy] AbsorptionAmount float 0.999999 run data get entity @s AbsorptionAmount
