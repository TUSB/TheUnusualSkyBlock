##############################
### メテオストライク tick
##############################

#ダメージ
function skill:damage/load
execute as @e[tag=Enemy,distance=..4.5] run function skill:damage/apply/
scoreboard players set @s Calc 4

#演出
function makeup:skill/act/black_mage/meteor_strike/tick_damage
