#> item:sign/set/write
##############################
### 看板設置
##############################

#プレイヤーの向きに合わせる
tp @s ~ ~ ~ ~ ~

#素材分岐 看板設置
execute if entity @s[tag=Acacia] run function item:sign/set/acacia
execute if entity @s[tag=Birch] run function item:sign/set/birch
execute if entity @s[tag=DarkOak] run function item:sign/set/dark_oak
execute if entity @s[tag=Jungle] run function item:sign/set/jungle
execute if entity @s[tag=Oak] run function item:sign/set/oak
execute if entity @s[tag=Spruce] run function item:sign/set/spruce
execute if entity @s[tag=Crimson] run function item:sign/set/crimson
execute if entity @s[tag=Warped] run function item:sign/set/warped
execute if entity @s[tag=Mangrove] run function item:sign/set/mangrove
execute if entity @s[tag=Bamboo] run function item:sign/set/bamboo
execute if entity @s[tag=Cherry] run function item:sign/set/cherry

#書き込み
data modify block ~ ~ ~ {} merge from entity @s ArmorItems[0].components."minecraft:custom_data".Data
