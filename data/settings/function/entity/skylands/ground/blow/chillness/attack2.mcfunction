#Function
# 通常デバフ
    effect give @s poison 15 19 true
    effect give @s mining_fatigue 15 4 true
    effect give @s slowness 15 4 true
# 15%の確率で凍結
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..14 run effect give @s invisibility 5 4 true
