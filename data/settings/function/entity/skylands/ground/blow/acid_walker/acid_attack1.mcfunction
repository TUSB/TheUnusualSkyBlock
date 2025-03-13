#Function
# 対象となるプレイヤー・Friendlyを特定
    execute store result storage mob_data: Call.Damage int 1 run scoreboard players get @s Attack
    execute as @e[distance=..2.5,predicate=entity:friendly,scores={ProjectileTime=0..}] if entity @s[type=player] run function settings:entity/skylands/ground/blow/acid_walker/acid_attack2
    execute as @e[distance=..2.5,predicate=entity:friendly] unless entity @s[type=player] run function settings:entity/skylands/ground/blow/acid_walker/acid_attack3
# パーティクル
    particle dust{color:[2.0,100000000.0,0.0],scale:2} ~ ~0.1 ~ 1 0 1 0 5 force @a[distance=..32,tag=ShowParticles]
    particle item{item:{id:"waxed_oxidized_cut_copper"}} ~ ~0.1 ~ 1 0 1 0.1 5 force @a[distance=..32,tag=ShowParticles]
