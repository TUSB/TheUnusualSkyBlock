#Function
# 一旦タグを戻す
    data modify entity @s Tags set from storage mob_data: Tags
# CallOnDeathとTickを無効化してKillする
    tag @s remove CallOnDeath
    tag @s remove CallOnTick
    tag @s add Garbage
# タグを再び保存（えぇ……）
    data modify storage mob_data: Tags set from entity @s Tags
