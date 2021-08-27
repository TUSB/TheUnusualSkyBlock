##############################
### レガシー鍛冶
##############################

###レガシー耐久回復値取得
execute store result score $LegacyDurability Global run data get entity @s SelectedItem.tag.AttributeModifiers[0].Amount 1
scoreboard players operation $LegacyDurability Global > $10 Const

###乱数によってロスト率を算出
function calc_manager:update_random
scoreboard players operation $Random Global %= $10 Const
###確率補正
scoreboard players add $Random Global 4
execute if score @s SupportSkill matches 12032 run scoreboard players add $Random Global 6

###成功
execute if score $Random Global matches 10.. run function skill_manager:knight/blacksmith/legacy/success
###失敗
execute if score $Random Global matches ..9 run function skill_manager:knight/blacksmith/legacy/failure

###通常の鍛冶はしないようにする
scoreboard players reset $Success Global
