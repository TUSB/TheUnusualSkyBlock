##############################
### スキル設定(モードサファイア)
##############################

###レベル上限取得
scoreboard players operation $TargetSkillJob Global = @s ChangeModeBlue
scoreboard players operation $TargetSkillJob Global /= $1000 Const
function skill_manager:get_level
###共通スコアに代入
scoreboard players operation $ChangeModeNo Global = @s ChangeModeBlue
scoreboard players set $ChangeModeCost Global 1000
scoreboard players set $ChangeModeInterval Global 0

###スキル値算出
execute unless score $ChangeModeNo Global matches 1..9999 run function skill_manager:set_skill/error
execute if score $ChangeModeNo Global matches 1101..1199 run function skill_manager:set_skill/knight/mode
execute if score $ChangeModeNo Global matches 2101..2199 run function skill_manager:set_skill/ninja/mode
execute if score $ChangeModeNo Global matches 3101..3199 run function skill_manager:set_skill/hunter/mode
execute if score $ChangeModeNo Global matches 4101..4199 run function skill_manager:set_skill/white_mage/mode
execute if score $ChangeModeNo Global matches 5101..5199 run function skill_manager:set_skill/black_mage/mode
execute if score $ChangeModeNo Global matches 6101..6199 run function skill_manager:set_skill/summoner/mode
execute if score $ChangeModeNo Global matches 7101..7199 run function skill_manager:set_skill/puppet_master/mode
execute if score $ChangeModeNo Global matches 8101..8199 run function skill_manager:set_skill/common/mode

###スキル未設定化
execute unless score $ChangeModeNo Global matches 10000..99999 run scoreboard players set $ChangeModeNo Global 1000

###スキル変更やさしさシステム前処理
execute if entity @s[tag=SuppressLimit] run scoreboard players set @s ChangeSkillLimit 0

###スキル変更不可時
scoreboard players reset @s[gamemode=creative] ChangeSkillLimit
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeModeNo Global = @s ModeSkillBlue
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeModeCost Global = @s ModeCostBlue
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeModeInterval Global = @s ModeIntervalBlue
###スキル値代入
scoreboard players operation @s ModeSkillBlue = $ChangeModeNo Global
scoreboard players operation @s ModeCostBlue = $ChangeModeCost Global
scoreboard players operation @s ModeIntervalBlue = $ChangeModeInterval Global
scoreboard players operation @s[tag=ModeBlue] ModeCost = @s ModeCostBlue
scoreboard players operation @s[tag=ModeBlue] ModeSkill = @s ModeSkillBlue
scoreboard players operation @s[tag=ModeBlue] ModeInterval = @s ModeIntervalBlue
###スキル名表示
###---演出---Start
execute if score @s ChangeSkillLimit matches ..0 run tellraw @s ["",{"text":"モードチェンジサファイア","color":"blue","bold":true},"を設定しました。"]
execute if score @s ChangeSkillLimit matches 1.. run tellraw @s ["","現在の",{"text":"モードチェンジサファイア","color":"blue","bold":true},"は"]
scoreboard players operation @s ShowSkillNo = $ChangeModeNo Global
tag @s add ShowSkillBlue
function skill_manager:show_skill/name
execute if score @s ChangeSkillLimit matches 1.. run tellraw @s ["あと",{"score":{"name":"@s","objective":"ChangeSkillLimit"},"color":"gold"},"秒変更できません。"]
###---演出---End
execute if score @s ChangeSkillLimit matches ..0 run scoreboard players set @s ChangeSkillLimit 180

###スキル変更やさしさシステム後処理
execute if score @s ChangeSkillLimit matches 180 run tag @s add SuppressLimit

###トリガー再有効化
scoreboard players set @s ChangeModeBlue 0
scoreboard players enable @s ChangeModeBlue
