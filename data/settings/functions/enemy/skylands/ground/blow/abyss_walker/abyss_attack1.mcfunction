#Function
# 対象となるプレイヤー・Friendlyを特定
    execute store result storage mob_data: Call.Damage int 1 run scoreboard players get @s Attack
    execute as @e[distance=..3.5,predicate=entity:friendly] if entity @s[type=player] run function settings:enemy/skylands/ground/blow/abyss_walker/abyss_attack2
    execute as @e[distance=..3.5,predicate=entity:friendly] unless entity @s[type=player] run function settings:enemy/skylands/ground/blow/abyss_walker/abyss_attack3
# パーティクル
    particle dust -1 0 -1 2 ~ ~0.1 ~ 1.5 0.2 1.5 0 40 force @a[distance=..32,tag=ShowParticles]
    particle item obsidian ~ ~0.1 ~ 1.5 0.2 1.5 0.1 10 force @a[distance=..32,tag=ShowParticles]
