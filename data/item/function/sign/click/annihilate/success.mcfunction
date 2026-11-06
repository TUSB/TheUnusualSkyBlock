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
    execute as @a[distance=..12,scores={RadarVision=-2147483648..2147483647}] run tag @s add NowTarget
    execute as @a[distance=..12,scores={RadarVision=-2147483648..2147483647}] run function skill:act/hunter/radar_vision/return0
    data remove storage entity: damage
    data modify storage entity: damage set value {unreasonable:9999,deathcause:'{"translate":"君は次の自分に思いを託して、跡形もなく消し飛んだ。","color":"#BD0000","bold":true}'}
    execute as @a[distance=..12,predicate=entity:player,tag=!NowTarget] run function entity:damage/apply/
    execute as @a[tag=NowTarget] run function entity:damage/apply/
    tag @a[tag=NowTarget] remove NowTarget

# 演出
    function makeup:item/sign/annihilate/success
