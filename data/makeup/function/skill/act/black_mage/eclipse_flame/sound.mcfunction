#> makeup:skill/act/black_mage/eclipse_flame/sound
#
# エクリプスフレイム発動中サウンド
# @within function skill:act/black_mage/eclipse_flame/explosion
execute as @a[distance=..32] facing entity @s feet facing ^ ^ ^-1 positioned as @s run playsound minecraft:entity.blaze.ambient player @s ^ ^ ^15 1 0.5
