#Function
# 低確率でペイル
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..15 run effect give @s invisibility 10 10
    execute if score _ Random matches ..15 run playsound entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.75
# 中確率で死の宣告
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..40 run effect give @s invisibility 10 2
    execute if score _ Random matches ..40 run playsound entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.75
# 高確率で麻痺
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..70 run effect give @s invisibility 10 5
# 進捗解除
    advancement revoke @s only settings:enemy/warden_attack
