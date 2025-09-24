#Function
# 一旦タグを戻す
    data modify entity @s Tags set from storage mob_data: Tags
# Killをなかったことにする
    tag @s remove Garbage
    data modify entity @s PortalCooldown set value 1000
# タグを再び保存（えぇ……）
    data modify storage mob_data: Tags set from entity @s Tags
