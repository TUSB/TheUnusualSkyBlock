#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage mob_data: MobName set from entity @s CustomName
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは%2$sに貫かれて死んでしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
# ループ数指定
    scoreboard players set # Calc 12
# ループ処理開始
    execute at @s if entity @a[predicate=entity:player,distance=..12] positioned ^ ^ ^0.5 run function settings:enemy/global/sky/shoot/lunatic_eye/laser_start_loop
# 当たったプレイヤーにダメージを与える（確定混乱）
    execute as @a[tag=Landing,distance=..16] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..16] invisibility 10 6 true
    effect give @a[tag=Landing,distance=..16] mining_fatigue 15 3
    effect give @a[tag=Landing,distance=..16] weakness 15 9
    tag @a[tag=Landing,distance=..16] remove Landing
