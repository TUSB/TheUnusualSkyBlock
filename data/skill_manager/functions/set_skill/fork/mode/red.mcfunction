##############################
### スキル設定(モードルビー)
##############################

###レベル上限取得
scoreboard players operation $TargetSkillJob Global = @s ChangeModeRed
scoreboard players operation $TargetSkillJob Global /= $1000 Const
function skill_manager:get_level
###共通スコアに代入
scoreboard players operation $ChangeModeNo Global = @s ChangeModeRed
scoreboard players set $ChangeModeCost Global 1000
###スキル値算出
execute unless score $ChangeModeNo Global matches 1..9999 run function skill_manager:set_skill/error
execute if score $ChangeModeNo Global matches 1101..1199 run function skill_manager:set_skill/knight/mode
execute if score $ChangeModeNo Global matches 2101..2199 run function skill_manager:set_skill/ninja/mode
execute if score $ChangeModeNo Global matches 3101..3199 run function skill_manager:set_skill/hunter/mode
execute if score $ChangeModeNo Global matches 4101..4199 run function skill_manager:set_skill/white_mage/mode
execute if score $ChangeModeNo Global matches 5101..5199 run function skill_manager:set_skill/black_mage/mode
execute if score $ChangeModeNo Global matches 6101..6199 run function skill_manager:set_skill/summoner/mode
execute if score $ChangeModeNo Global matches 7101..7199 run function skill_manager:set_skill/puppet_master/mode
###スキル未設定化
execute unless score $ChangeModeNo Global matches 10000..99999 run scoreboard players set $ChangeModeNo Global 1000
###スキル変更不可時
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeModeNo Global = @s ModeSkillRed
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeModeCost Global = @s ModeCostRed
###スキル値代入
scoreboard players operation @s ModeSkillRed = $ChangeModeNo Global
scoreboard players operation @s ModeCostRed = $ChangeModeCost Global
scoreboard players operation @s[tag=ModeRed] ModeCost = @s ModeCostRed
scoreboard players operation @s[tag=ModeRed] ModeSkill = @s ModeSkillRed
###スキル名表示
###---演出---Start
execute if score @s ChangeSkillLimit matches ..0 run tellraw @s ["",{"text":"モードチェンジルビー","color":"red","bold":true},"を設定しました。"]
execute if score @s ChangeSkillLimit matches 1.. run tellraw @s ["","現在の",{"text":"モードチェンジルビー","color":"red","bold":true},"は"]
scoreboard players operation @s ShowSkillNo = $ChangeModeNo Global
tag @s add ShowSkillRed
function skill_manager:show_skill/name
execute if score @s ChangeSkillLimit matches 1.. run tellraw @s ["あと",{"score":{"name":"@s","objective":"ChangeSkillLimit"},"color":"gold"},"秒変更できません。"]
###---演出---End
execute if score @s ChangeSkillLimit matches ..0 run scoreboard players set @s ChangeSkillLimit 180
###トリガー再有効化
scoreboard players set @s ChangeModeRed 0
scoreboard players enable @s ChangeModeRed
