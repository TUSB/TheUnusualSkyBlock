#> skill:act/common/dig_tomb/success
#
# 成功時処理
#
# @within function skill:act/common/dig_tomb/act0

# Oh_my_dat に一時保存
    function #oh_my_dat:please
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].DeathInventory append from storage item: Item.tag.DeathInventory
    tag @s add DigTomb
    schedule function skill:act/common/dig_tomb/schedule1 1t