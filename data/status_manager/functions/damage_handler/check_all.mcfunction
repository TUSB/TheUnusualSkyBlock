##############################
### 被ダメージ判定
##############################

### プレイヤー以外を対象に取る
execute as @e[tag=Mob] run function status_manager:damage_handler/check_each
