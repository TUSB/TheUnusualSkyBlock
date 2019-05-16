##############################
### 上方向の加速処理
##############################

# ### スピード補正
scoreboard players operation @s UpwardSpeed += @s UpwardGravity
# ### スピード制限
scoreboard players operation @s UpwardSpeed > @s UpwardSpeedMin
scoreboard players operation @s UpwardSpeed < @s UpwardSpeedMax
