#Function
# パーティクル
    particle item purple_stained_glass ~ ~1 ~ 0.5 0.5 0.5 0 2 force @a[distance=..16,tag=ShowParticles]
# ダメージ判定
    data modify storage mob_data: MobName set from entity @s CustomName
    execute store result storage mob_data: Call.Damage int 1 run scoreboard players get @s Attack
    execute positioned ~-1.5 ~-1.5 ~-1.5 as @a[predicate=entity:player,dx=2,dy=2,dz=2] run function settings:enemy/global/sky/shoot/lunatic_eye/powder_orb_effect
# なぜか徐々に近づいてくる……
    execute if entity @a[predicate=entity:player,distance=..16] facing entity @a[distance=..16,predicate=entity:player,sort=nearest,limit=1] feet if block ^ ^ ^0.05 #block:no_collision run tp @s ^ ^ ^0.05 ~ ~
