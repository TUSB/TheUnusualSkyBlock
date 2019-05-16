##############################
### 左方向の加速処理
##############################

# ### スピード補正
scoreboard players operation @s LeftwardSpeed += @s LeftwardGravity
# ### スピード制限
scoreboard players operation @s LeftwardSpeed > @s LeftwardSpeedMin
scoreboard players operation @s LeftwardSpeed < @s LeftwardSpeedMax
