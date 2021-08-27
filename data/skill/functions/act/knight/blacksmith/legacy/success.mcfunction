##############################
### 鍛冶成功
##############################

###ダメージ値回復
execute store result entity @s SelectedItem.tag.AttributeModifiers[0].Amount double 1 run scoreboard players get $LegacyDurability Global

###---演出---Start
function makeup:skill/act/knight/blacksmith/legacy/success
###---演出---End
