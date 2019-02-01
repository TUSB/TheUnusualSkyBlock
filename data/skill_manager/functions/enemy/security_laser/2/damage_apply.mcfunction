##############################
### セキュリティレーザーダメージ
##############################

effect give @s minecraft:instant_damage 40 3 true
effect give @s minecraft:mining_fatigue 5 3 false
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.2 200 normal
playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 0.8
tag @s add Applied
