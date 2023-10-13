#Function
# 通常デバフ
    effect give @s hunger 8 9 true
# 対象の最大MPの5%を確定で減らす
    scoreboard players set _ MP 5
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    execute unless score @s MP > _ MP run scoreboard players set @s MP 0
    execute if score @s MP > _ MP run scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 2%の確率で呪詛
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 50
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..0 run effect give @s invisibility 5 7 true
    execute if score _ Random matches ..0 run playsound entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.75
