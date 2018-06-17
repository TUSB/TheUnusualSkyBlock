##############################
### はやぶさ斬りダメージ計算
##############################

###ダメージ計算
scoreboard players operation @s SkillAttribute = @s FalconHP
execute store result score @s FalconHP run data get entity @s AbsorptionAmount 10
scoreboard players operation @s SkillAttribute -= @s FalconHP
scoreboard players operation $Damage Global > @s SkillAttribute
