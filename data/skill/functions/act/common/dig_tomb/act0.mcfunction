#> skill:act/common/dig_tomb/act0
#
# 墓掘り - 死亡時に落としたアイテムを復元する
#
# @within function skill:practice/act/common

# スケジュール起動する
    function oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from storage item: Item.tag.DeathInventory
    tag @s add DigTomb
    schedule function skill:act/common/dig_tomb/schedule1 1t