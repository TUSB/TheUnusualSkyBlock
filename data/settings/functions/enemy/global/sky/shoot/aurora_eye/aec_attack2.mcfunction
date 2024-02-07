#Function
# 距離をチェックする
    function #util:distance
    execute store result score _ _ run data get storage util: out 100
    execute if score _ _ <= _ MP if entity @s[type=player] run function settings:enemy/global/sky/shoot/aurora_eye/aec_attack3
    execute if score _ _ <= _ MP unless entity @s[type=player] run function settings:enemy/global/sky/shoot/aurora_eye/aec_attack4
