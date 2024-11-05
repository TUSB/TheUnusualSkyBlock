
# MP回復速度が最遅なら加速スタート
execute if score @s MPAcceleration matches ..-1 run scoreboard players set @s MPAcceleration 0
# MP回復速度が加速中なら維持
# execute if score @s MPAcceleration matches 1.. run 