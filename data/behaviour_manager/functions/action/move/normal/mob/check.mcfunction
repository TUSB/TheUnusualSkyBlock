##############################
### ターゲットへ向けての移動
##############################

### 速度変化計算
scoreboard players operation @s ForwardSpeed += @s ForwardGravity
scoreboard players operation @s UpwardSpeed += @s UpwardGravity
scoreboard players operation @s LeftwardSpeed += @s LeftwardGravity

### 移動量計算
scoreboard players operation @s ForwardAmount += @s ForwardSpeed
scoreboard players operation @s UpwardAmount += @s UpwardSpeed
scoreboard players operation @s LeftwardAmount += @s LeftwardSpeed

### 回転量計算
scoreboard players operation @s SpinAmount += @s SpinSpeed

### 順番が一定以下なら行動実行
execute if score @s QueueID matches ..20 run function behaviour_manager:action/move/normal/mob/apply
