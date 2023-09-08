#Function
# 対象の最大MPの5%を確定で減らす
    scoreboard players set _ MP 5
    scoreboard players set _ _ 100
    scoreboard players operation _ MP *= @s MPMax
    scoreboard players operation _ MP /= _ _
    scoreboard players operation @s MP -= _ MP
# MPアクセラを無効化
    scoreboard players set @s MPAcceleration -600
# 対象にかけられているバフを一部解除し、鈍足を付与
    effect give @s slowness 10 3
    effect give @s jump_boost 10 128
    effect clear @s minecraft:haste
    effect clear @s minecraft:night_vision
# 低確率で凍結
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..10 run effect give @s invisibility 5 4
