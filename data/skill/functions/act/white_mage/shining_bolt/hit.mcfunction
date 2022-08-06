##############################
### シャイニングボルトヒット
##############################

#アンデッドはダメージ4倍
scoreboard players set _ Calc 400
execute at 0-0-0-0-2 if entity @e[tag=Enemy,type=#entity:undead,nbt=!{AbsorptionAmount:1000000f},distance=0] run function skill:damage/modify
#演出
function makeup:skill/act/white_mage/shining_bolt/hit
