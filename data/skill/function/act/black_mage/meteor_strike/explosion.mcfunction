##############################
### メテオストライク 爆発
##############################

kill @s

#ダメージ
function skill:damage/load
execute as @e[tag=Enemy,distance=..6.5] run function skill:damage/apply/

#演出
function makeup:skill/act/black_mage/meteor_strike/explosion
