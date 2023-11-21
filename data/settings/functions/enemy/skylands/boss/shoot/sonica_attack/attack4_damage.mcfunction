#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage mob_data: MobName set from entity @s CustomName
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,DeathCause:'[{"translate":"%1$sは%2$sの音速を超える居合に斬り裂かれてしまった。","with":[{"selector":"@s"},{"storage":"mob_data:","nbt":"MobName","interpret":true}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.8 run scoreboard players get @s Attack
# Markerを召喚
    function calc:geometry/tp_00000
    execute as 0-0-0-0-0 at @s facing ^ ^ ^-1 run tp @s ^ ^ ^ ~ ~
# 演出
    scoreboard players set # Calc 17
    execute at 0-0-0-0-0 run function settings:enemy/skylands/boss/shoot/sonica_attack/attack4_damage_loop
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 当たったプレイヤーにダメージを与える（確定麻痺）
    execute as @a[tag=Landing,distance=..32] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..32] invisibility 10 5
    effect give @a[tag=Landing,distance=..32] slowness 30 3
    execute as @e[type=!player,predicate=entity:friendly,tag=Landing,distance=..32] run function settings:enemy/skylands/boss/shoot/sonica_ai/wave_damage3
    tag @e[tag=Landing,distance=..32] remove Landing
# 発動音
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.75 0.01
    playsound entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1 1.7 0.01
    playsound entity.lightning_bolt.thunder hostile @a[distance=..32] ~ ~ ~ 1 2
