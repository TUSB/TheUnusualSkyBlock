#Function
# 攻撃力を適用
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {BypassArmor:1b,BypassResistance:1b,DeathCause:'[{"translate":"%1$sはビームによって跡形もなく焼き払われてしまった。","with":[{"selector":"@s"}]}]'}
    execute store result storage score_damage: Argument.Damage int 0.25 run scoreboard players get @s Attack
# Markerを召喚
    function calc:geometry/tp_00000
# 演出
    scoreboard players set # Calc 48
    execute as 0-0-0-0-0 at @s facing entity @e[type=marker,tag=SonicABeam,limit=1] eyes run tp @s ^ ^ ^ ~ ~
    execute at 0-0-0-0-0 run function settings:enemy/skylands/boss/shoot/sonica_ai/beam_damage2
# Marker返却
    execute as 0-0-0-0-0 run function calc:geometry/return_marker
# 当たったプレイヤーにダメージを与える（確定麻痺）
    execute as @a[tag=Landing,distance=..32] run function skill:enemy/laser/main/damage
    effect give @a[tag=Landing,distance=..32] invisibility 10 5
    execute as @e[type=!player,predicate=entity:friendly,tag=Landing,distance=..32] run function settings:enemy/skylands/boss/shoot/sonica_ai/wave_damage3
    tag @e[tag=Landing,distance=..32] remove Landing
    playsound entity.illusioner.prepare_mirror hostile @a[distance=..32] ~ ~ ~ 2 2 1
