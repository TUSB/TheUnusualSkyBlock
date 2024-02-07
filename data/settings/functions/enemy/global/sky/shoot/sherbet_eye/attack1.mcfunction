#Function
# 対象となるプレイヤー・Friendlyを特定
    data modify storage mob_data: MobName set from entity @s CustomName
    execute as @e[distance=..0.5,predicate=entity:friendly,sort=nearest,limit=1] if entity @s[type=player] run function settings:enemy/global/sky/shoot/sherbet_eye/attack2
    execute as @e[distance=..0.5,predicate=entity:friendly,sort=nearest,limit=1] unless entity @s[type=player] run function settings:enemy/global/sky/shoot/sherbet_eye/attack3
