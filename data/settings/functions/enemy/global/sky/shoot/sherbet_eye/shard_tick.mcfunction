#Function
# 衝突判定
    scoreboard players set _ _ 0
    execute unless block ^ ^ ^ #main:no_collision run scoreboard players add _ _ 1
    execute unless block ^ ^ ^0.5 #main:no_collision run scoreboard players add _ _ 1
    execute if score _ _ matches 1.. run function settings:enemy/global/sky/shoot/sherbet_eye/shard_attack
