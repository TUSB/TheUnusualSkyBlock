#> item:sign/click/annihilate/success
#
# 全滅処理
#
# @within function item:sign/click/annihilate/

# MOBと弾の全滅処理
    tag @e[distance=..12,tag=Mob] add Garbage
    tag @e[distance=..12,tag=DamageProjectile] add Garbage

# プレイヤー全滅処理
# レーダー・ヴィジョンを使っている奴も許さない
    execute as @a[distance=..12,scores={RaderVision=-2147483648..2147483647}] run tag @s add NowTarget
    execute as @a[distance=..12,scores={RaderVision=-2147483648..2147483647}] run function skill:act/hunter/rader_vision/return0
    data remove storage score_damage: Argument
    data modify storage score_damage: Argument set value {Damage:999,BypassArmor:1b,BypassResistance:1b,EPF:0,DeathCause:'{"translate":"君は次の自分に思いを託して、跡形もなく消し飛んだ。","color":"#BD0000","bold":true}'}
    execute as @a[distance=..12,predicate=entity:player,tag=!NowTarget] run function score_damage:api/attack
    execute as @a[tag=NowTarget] run function score_damage:api/attack
    tag @a[tag=NowTarget] remove NowTarget

# 演出
    function makeup:item/sign/annihilate/success
