#Function
# ターゲットにデバフ
# 通常デバフ
    effect give @s poison 5 9 true
    effect give @s mining_fatigue 5 2 true
    effect give @s slowness 5 2 true
# 10%の確率で凍結
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..9 run effect give @s invisibility 5 4 true
