##############################
### セイクリッドピラー直撃
##############################

execute if score @s ProjectileSkillA matches 1.. run function skill_manager:white_mage/sacred_pillar/success
execute if score @s ProjectileSkillA matches ..0 run function skill_manager:white_mage/sacred_pillar/failure
