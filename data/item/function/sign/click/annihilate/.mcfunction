#> item:sign/click/annihilate/
#
# 全滅の印板
#
# @private

# 近くに印板対策の敵がいる場合、失敗
    execute if entity @e[distance=..12,tag=AntiAnnihilate] run function makeup:item/sign/annihilate/fail
    execute unless entity @e[distance=..12,tag=AntiAnnihilate] run function item:sign/click/annihilate/success

# 消滅
    setblock ~ ~ ~ minecraft:air
