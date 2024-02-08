#Function
# 対象となるプレイヤーを特定
    execute store result storage mob_data: Call.Damage int 1 run scoreboard players get @s Attack
    execute as @a[distance=..2.5,predicate=entity:player] run function settings:enemy/skylands/water/shoot/curse_guardian/curse2
# パーティクル
    particle dust 0 -1 -1 1.5 ~ ~1 ~ 1 1 1 0 5 force @a[distance=..32,tag=ShowParticles]
