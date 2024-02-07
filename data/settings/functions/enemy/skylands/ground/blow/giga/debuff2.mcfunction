#Function
# 通常デバフ
    effect give @s hunger 8 3 true
    effect give @s slowness 8 3 true
# 2%の確率で呪詛
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 50
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..0 run effect give @s invisibility 5 7 true
    execute if score _ Random matches ..0 run playsound entity.wither.spawn hostile @s ~ ~ ~ 0.5 1.75
