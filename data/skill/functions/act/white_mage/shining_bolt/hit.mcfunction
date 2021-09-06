##############################
### シャイニングボルトヒット
##############################

#アンデッドはダメージ4倍
scoreboard players set _ Calc 400
execute if entity @e[tag=Mob,type=#entity:undead,nbt=!{AbsorptionAmount:1000000f}] run function skill:damage/modify
#演出
function makeup:skill/act/white_mage/shining_bolt/hit
