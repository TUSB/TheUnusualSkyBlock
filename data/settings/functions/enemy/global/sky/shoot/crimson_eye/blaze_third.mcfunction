#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {DamageType:[Global],DeathCause:'[{"translate":"%1$sは燃え盛る血が付着して、火だるまとなってしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
# ループ数指定
    scoreboard players set # Calc 64
# ループ処理開始
    execute at @s if entity @a[predicate=entity:player,distance=..16] positioned ^ ^ ^0.25 if block ^ ^ ^ #block:no_collision run function settings:enemy/global/sky/shoot/crimson_eye/blaze_third_loop
# 当たったプレイヤーにダメージを与える（確定火だるま）
    execute as @a[tag=Landing,distance=..24] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..24] invisibility 10 3 true
    tag @a[tag=Landing,distance=..24] remove Landing
# 発射音
    playsound entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 1.75 0.01
    playsound entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 0.5 0.7 0.01
    playsound entity.blaze.shoot hostile @a[distance=..32] ~ ~ ~ 1 0.5 0.01
