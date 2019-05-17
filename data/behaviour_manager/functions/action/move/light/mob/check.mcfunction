##############################
### ターゲットへ向けての移動
##############################

### 移動量計算
scoreboard players operation @s ForwardAmount += @s ForwardSpeed
scoreboard players operation @s UpwardAmount += @s UpwardSpeed
scoreboard players operation @s LeftwardAmount += @s LeftwardSpeed

### 順番が一定以下なら行動実行
execute if score @s QueueID matches ..20 run function behaviour_manager:action/move/light/mob/apply
