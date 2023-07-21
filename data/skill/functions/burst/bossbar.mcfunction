
# 値更新
execute store result bossbar skill:burst value run scoreboard players get $World Burst

# バースト使用可能かどうか？
execute store result score _ _ run bossbar get skill:burst max
scoreboard players set _ Calc 3
scoreboard players operation _ _ /= _ Calc
execute if score _ _ <= $World Burst run bossbar set skill:burst color yellow
execute if score _ _ > $World Burst run bossbar set skill:burst color white

# 表示
execute if score $World Burst matches 1.. run bossbar set skill:burst visible true
execute if score $World Burst matches ..0 run bossbar set skill:burst visible false
