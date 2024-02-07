#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassResistance:1b,DeathCause:'[{"translate":"%1$sは深淵を覗いた気分になり発狂した。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 1 run scoreboard players get @s Attack
# Markerを召喚
    function calc:geometry/tp_00000
# ループ処理
    scoreboard players set # Calc 24
    function settings:enemy/skylands/ground/shoot/abyss_mage/beam_attack2
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 当たったプレイヤーにダメージを与える（確定呪詛+盲目+弱体化）
    execute as @a[tag=Landing,distance=..32] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..32] invisibility 10 7
    effect give @a[tag=Landing,distance=..32] blindness 60 0
    effect give @a[tag=Landing,distance=..32] weakness 60 30
    scoreboard players set @a[tag=Landing,distance=..32] ProjectileTime 10
    tag @a[tag=Landing,distance=..32] remove Landing
# 発射音
    playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 1 1.5 0.01
    playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 1 1.55 0.01
    playsound entity.evoker.prepare_attack hostile @a[distance=..32] ~ ~ ~ 1 1.6 0.01
