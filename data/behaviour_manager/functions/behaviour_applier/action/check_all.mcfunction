##############################
### ターゲットへの行動チェック
##############################

### ターゲット保持中 && 
### 動き繰り返しタグがBrokenでなければ
### 続きを確認
execute as @e[tag=HasTarget,tag=!Repeater.Broken] at @s run function behaviour_manager:behaviour_applier/action/check_each
