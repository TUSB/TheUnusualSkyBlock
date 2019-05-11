##############################
### ターゲットへの行動チェック
##############################

### ターゲット使用エンティティ &&
### ターゲット保持中
### ならチェック
execute as @e[tag=UseTarget,tag=HasTarget] at @s run function behaviour_manager:behaviour_applier/action/check_each
