#> makeup:skill/act/white_mage/sol_flare/emission0
#
# ソルフレア放射演出 0~2.5s

# 魔法陣を作ってそこから光が降ってくる感じ
# 太陽十字
particle minecraft:flame ^0 ^3 ^-2 0 0 0 0 1
particle minecraft:flame ^0.61803 ^3 ^-1.90211 0 0 0 0 1
particle minecraft:flame ^1.17557 ^3 ^-1.61803 0 0 0 0 1
particle minecraft:flame ^1.61803 ^3 ^-1.17557 0 0 0 0 1
particle minecraft:flame ^1.90211 ^3 ^-0.61803 0 0 0 0 1
particle minecraft:flame ^2 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^1.90211 ^3 ^0.61803 0 0 0 0 1
particle minecraft:flame ^1.61803 ^3 ^1.17557 0 0 0 0 1
particle minecraft:flame ^1.17557 ^3 ^1.61803 0 0 0 0 1
particle minecraft:flame ^0.61803 ^3 ^1.90211 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^2 0 0 0 0 1
particle minecraft:flame ^-0.61803 ^3 ^1.90211 0 0 0 0 1
particle minecraft:flame ^-1.17557 ^3 ^1.61803 0 0 0 0 1
particle minecraft:flame ^-1.61803 ^3 ^1.17557 0 0 0 0 1
particle minecraft:flame ^-1.90211 ^3 ^0.61803 0 0 0 0 1
particle minecraft:flame ^-2 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^-1.90211 ^3 ^-0.61803 0 0 0 0 1
particle minecraft:flame ^-1.61803 ^3 ^-1.17557 0 0 0 0 1
particle minecraft:flame ^-1.17557 ^3 ^-1.61803 0 0 0 0 1
particle minecraft:flame ^-0.61803 ^3 ^-1.90211 0 0 0 0 1
particle minecraft:flame ^-1.6 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^-1.2 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^-0.8 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^-0.4 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^0.4 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^0.8 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^1.2 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^1.6 ^3 ^0 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^-1.6 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^-1.2 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^-0.8 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^-0.4 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^0.4 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^0.8 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^1.2 0 0 0 0 1
particle minecraft:flame ^0 ^3 ^1.6 0 0 0 0 1
# 柱？
particle minecraft:end_rod ^ ^ ^ 1 1 1 0 10 force @a
particle minecraft:end_rod ^ ^ ^ 1 1 1 1 5 force @a

playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1
