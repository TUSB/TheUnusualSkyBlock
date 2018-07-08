##############################
### ディバインシールド
##############################

###ダメージ算出
execute if score @s ModeSkill matches 11031..11039 run function skill_manager:knight/divine_shield/get_damage
execute if score @s ModeSkill matches 11031..11039 run scoreboard players operation @s DivineShield = $Damage Global
execute if score @s ModeSkill matches 11031..11039 run scoreboard players operation @s ActiveSkill = @s ModeSkill

###進捗トリガーリセット
advancement revoke @s only skill_manager:divine_shield
