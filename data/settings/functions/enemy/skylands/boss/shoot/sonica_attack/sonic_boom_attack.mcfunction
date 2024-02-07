#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,DeathCause:'[{"translate":"%1$sはソニックブームでふっ飛ばされ、意識を失った。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.8 run scoreboard players get @s Attack
# Markerを召喚
    function calc:geometry/tp_00000
# 演出
    scoreboard players set # Calc 12
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~ 0
    execute at 0-0-0-0-0 run function settings:enemy/skylands/boss/shoot/sonica_attack/sonic_boom_attack_loop
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 当たったプレイヤーにダメージを与える（確定麻痺）
    execute as @a[tag=Landing,distance=..32] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..32] invisibility 10 5
    execute as @e[type=!player,predicate=entity:friendly,tag=Landing,distance=..32] run function settings:enemy/skylands/boss/shoot/sonica_ai/wave_damage3
    tag @e[tag=Landing,distance=..32] remove Landing
# 発射音
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.75 0.01
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.7 0.01
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.65 0.01
