##############################
### 無限チェスト確認
##############################

### 近くにプレイヤーがいなければ destroy
execute unless entity @a[distance=..7] run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy

### シャルカーボックスでなくなっていたら shulker_box -> player_head
execute unless block ~ ~ ~ minecraft:shulker_box as @e[type=item,nbt={Item:{id:"minecraft:shulker_box",}}] at @s run data merge entity @s {Item:{id:"minecraft:player_head",tag:{FromBox:true,display:{Name:"{\"text\":\"格納された無限チェスト\"}"},SkullOwner:{Id:"978f54fe-2cee-4dba-a8be-b4e68cd85adb",Properties:{textures:[{Signature:"InfinityChest",Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjVjNGQyNGFmZmRkNDgxMDI2MjAzNjE1MjdkMjE1NmUxOGMyMjNiYWU1MTg5YWM0Mzk4MTU2NDNmM2NmZjlkIn19fQ=="}]}}}}}
execute unless block ~ ~ ~ minecraft:shulker_box run kill @s

### チェストが不一致なら更新する
execute if block ~ ~ ~ minecraft:shulker_box unless blocks ~ ~ ~ ~ ~ ~ 0 20 0 all run function item_manager:infinity_chest/update
