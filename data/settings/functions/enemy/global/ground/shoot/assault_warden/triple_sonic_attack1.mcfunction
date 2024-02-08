#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,EPF:0,DeathCause:'[{"translate":"%1$sはソニックブームでふっ飛ばされ、意識を失った。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.7 run scoreboard players get @s Attack
# Markerを召喚
    function calc:geometry/tp_00000
# 演出
    scoreboard players set # Calc 12
    execute at 0-0-0-0-0 run function settings:enemy/global/ground/shoot/assault_warden/triple_sonic_attack_loop
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~120 ~
    scoreboard players set # Calc 12
    execute at 0-0-0-0-0 run function settings:enemy/global/ground/shoot/assault_warden/triple_sonic_attack_loop
    execute as 0-0-0-0-0 at @s run tp @s ^ ^ ^ ~120 ~
    scoreboard players set # Calc 12
    execute at 0-0-0-0-0 run function settings:enemy/global/ground/shoot/assault_warden/triple_sonic_attack_loop
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 当たったプレイヤーにダメージを与える（確定麻痺）
    execute as @a[tag=Landing,distance=..32] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..32] invisibility 10 5
    tag @a[tag=Landing,distance=..32] remove Landing
# 発射音
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.75 0.01
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.7 0.01
    playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.65 0.01
