##############################
### セキュリティレーザーダメージ
##############################

effect give @s minecraft:instant_damage 1 4 true
effect give @s minecraft:mining_fatigue 7 5 false
function effect_manager:debility/apply
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.2 200 normal
playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 0.8
tag @s add Applied
