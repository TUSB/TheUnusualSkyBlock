#Function
# 当たったときの音
    function settings:enemy/global/sky/shoot/aurora_eye/shard_effect
# 近くにいたらダメージを与える
    data modify storage mob_data: MobName set from entity @s CustomName
    execute as @e[distance=..2,predicate=entity:friendly] if entity @s[type=player] run function settings:enemy/global/sky/shoot/aurora_eye/shard_attack2
    execute as @e[distance=..2,predicate=entity:friendly] unless entity @s[type=player] run function settings:enemy/global/sky/shoot/aurora_eye/shard_attack3
# Killする
    data modify storage mob_data: Tags append value "Garbage"
