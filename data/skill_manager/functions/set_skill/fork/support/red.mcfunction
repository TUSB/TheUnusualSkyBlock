##############################
### スキル設定(サポートルビー)
##############################

###レベル上限取得
scoreboard players operation $TargetSkillJob Global = @s ChangeSupRed
scoreboard players operation $TargetSkillJob Global /= $1000 Const
function skill_manager:get_level
###共通スコアに代入
scoreboard players operation $ChangeSupNo Global = @s ChangeSupRed
scoreboard players set $ChangeSupCost Global 1000
###スキル値算出
execute unless score $ChangeSupNo Global matches 1..9999 run function skill_manager:set_skill/error
execute if score $ChangeSupNo Global matches 1201..1299 run function skill_manager:set_skill/knight/support
execute if score $ChangeSupNo Global matches 2201..2299 run function skill_manager:set_skill/ninja/support
execute if score $ChangeSupNo Global matches 3201..3299 run function skill_manager:set_skill/hunter/support
execute if score $ChangeSupNo Global matches 4201..4299 run function skill_manager:set_skill/white_mage/support
execute if score $ChangeSupNo Global matches 5201..5299 run function skill_manager:set_skill/black_mage/support
execute if score $ChangeSupNo Global matches 6201..6299 run function skill_manager:set_skill/summoner/support
execute if score $ChangeSupNo Global matches 7201..7299 run function skill_manager:set_skill/puppet_master/support
###スキル未設定化
execute unless score $ChangeSupNo Global matches 10000..99999 run scoreboard players set $ChangeSupNo Global 2000
###スキル変更不可時
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeSupNo Global = @s SupportSkillRed
execute if score @s ChangeSkillLimit matches 1.. run scoreboard players operation $ChangeSupCost Global = @s SupportCostRed
###スキル値代入
scoreboard players operation @s SupportSkillRed = $ChangeSupNo Global
scoreboard players operation @s SupportCostRed = $ChangeSupCost Global
scoreboard players operation @s[tag=SupportRed] SupportCost = @s SupportCostRed
scoreboard players operation @s[tag=SupportRed] SupportSkill = @s SupportSkillRed
###スキル名表示
###---演出---Start
execute if score @s ChangeSkillLimit matches ..0 run tellraw @s ["",{"text":"サポートアクションルビー","color":"red","bold":true},"を設定しました。"]
execute if score @s ChangeSkillLimit matches 1.. run tellraw @s ["","現在の",{"text":"サポートアクションルビー","color":"red","bold":true},"は"]
scoreboard players operation @s ShowSkillNo = $ChangeSupNo Global
tag @s add ShowSkillRed
function skill_manager:show_skill/name
execute if score @s ChangeSkillLimit matches 1.. run tellraw @s ["あと",{"score":{"name":"@s","objective":"ChangeSkillLimit"},"color":"gold"},"秒変更できません。"]
###---演出---End
execute if score @s ChangeSkillLimit matches ..0 run scoreboard players set @s ChangeSkillLimit 180
###トリガー再有効化
scoreboard players set @s ChangeSupRed 0
scoreboard players enable @s ChangeSupRed
