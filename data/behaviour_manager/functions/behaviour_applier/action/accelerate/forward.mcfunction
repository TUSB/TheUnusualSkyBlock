##############################
### 前方向の加速処理
##############################

# ### スピード補正
scoreboard players operation @s ForwardSpeed += @s ForwardGravity
# ### スピード制限
scoreboard players operation @s ForwardSpeed > @s ForwardSpeedMin
scoreboard players operation @s ForwardSpeed < @s ForwardSpeedMax
