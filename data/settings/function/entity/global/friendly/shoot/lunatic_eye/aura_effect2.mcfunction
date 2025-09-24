#Function
# ポーション系効果
# 混乱と病気を常時解除
    effect give @s haste 10 1
    effect give @s night_vision 10 1
    execute if score @s ConfuseCount matches -2147483648..2147483647 run function makeup:effects/confuse/cure
    scoreboard players reset @s ConfuseCount
    execute if score @s VirusCount matches -2147483648..2147483647 run function makeup:effects/virus/cure
    scoreboard players reset @s VirusCount
# 回復してくれる
    scoreboard players add @s HealthHealing 8
