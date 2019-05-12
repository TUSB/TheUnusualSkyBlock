##############################
### ターゲットへの行動チェック
##############################

### ターゲット保持中なら
### 続きを確認
execute as @e[tag=HasTarget] at @s run function behaviour_manager:behaviour_applier/action/check_each
