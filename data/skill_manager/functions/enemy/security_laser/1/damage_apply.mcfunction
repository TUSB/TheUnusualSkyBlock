##############################
### セキュリティレーザーダメージ
##############################

effect give @s minecraft:instant_damage 1 2 true
particle minecraft:flame ~ ~0.5 ~ 0 0 0 0.2 200 normal @a[tag=ShowParticles]
playsound minecraft:entity.generic.burn master @a ~ ~ ~ 1 0.8
tag @s add Applied
