##############################
### 鍛冶成功
##############################

###ダメージ値回復
execute store result entity @s SelectedItem.tag.Damage short 1 run scoreboard players get $Damage Global

###---演出---Start
function makeup:skill/act/knight/blacksmith/success
###---演出---End
