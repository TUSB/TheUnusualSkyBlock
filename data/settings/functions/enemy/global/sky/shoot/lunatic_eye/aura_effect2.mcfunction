#Function
# ポーション系効果
    effect give @s hunger 5 3
    effect give @s mining_fatigue 5 3
    effect give @s weakness 5 9
    effect give @s poison 5 7
    effect clear @s fire_resistance
    effect clear @s night_vision
# 低確率でデバフ
    execute store result score _ Random run function calc:random
    scoreboard players set _ _ 100
    scoreboard players operation _ Random %= _ _
    execute if score _ Random matches ..5 run effect give @s invisibility 5 6
