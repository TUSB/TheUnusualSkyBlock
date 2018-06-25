##############################
### セイクリッドピラー発動中
##############################

###レベルで場合分け
execute if entity @s[tag=PillarLevel1] run function skill_manager:white_mage/sacred_pillar/tick/level1
execute if entity @s[tag=PillarLevel2] run function skill_manager:white_mage/sacred_pillar/tick/level2
execute if entity @s[tag=PillarLevel3] run function skill_manager:white_mage/sacred_pillar/tick/level3

###消滅演出
execute if entity @s[nbt={PortalCooldown:0}] run function skill_manager:white_mage/sacred_pillar/failure
execute if score @s PillarCount matches ..0 run function skill_manager:white_mage/sacred_pillar/failure
execute if score @s PillarCount matches ..0 run kill @s
