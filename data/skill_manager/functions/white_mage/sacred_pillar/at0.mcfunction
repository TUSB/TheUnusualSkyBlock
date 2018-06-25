##############################
### セイクリッドピラー接地
##############################

execute if score @s SkillAttribute matches 1.. run function skill_manager:white_mage/sacred_pillar/success
execute if score @s SkillAttribute matches ..0 run function skill_manager:white_mage/sacred_pillar/failure
tag @s remove SacredPillar
