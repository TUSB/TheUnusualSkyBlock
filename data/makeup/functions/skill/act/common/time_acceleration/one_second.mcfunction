##############################
### 時間加速演出
##############################

particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 1 1 force @a
particle minecraft:dust 0 0 0 1 ~ ~ ~0.2 0 0 0 1 1 force @a
particle minecraft:dust 0 0 0 1 ~ ~ ~0.4 0 0 0 1 1 force @a
particle minecraft:dust 0 0 0 1 ~ ~ ~0.6 0 0 0 1 1 force @a
particle minecraft:dust 0 0 0 1 ~ ~ ~0.8 0 0 0 1 1 force @a
particle minecraft:dust 0 0 0 1 ~ ~ ~1.0 0 0 0 1 1 force @a

particle minecraft:dust 1 0 0 1 ^ ^ ^ 0 0 0 1 1 force @a
particle minecraft:dust 1 0 0 1 ^ ^ ^0.2 0 0 0 1 1 force @a
particle minecraft:dust 1 0 0 1 ^ ^ ^0.4 0 0 0 1 1 force @a
particle minecraft:dust 1 0 0 1 ^ ^ ^0.6 0 0 0 1 1 force @a
particle minecraft:dust 1 0 0 1 ^ ^ ^0.8 0 0 0 1 1 force @a
particle minecraft:dust 1 0 0 1 ^ ^ ^1.0 0 0 0 1 1 force @a

#サウンド
playsound minecraft:ui.button.click master @a ~ ~ ~ 0.24 1.5 0
execute if score @s Interval matches 30.. run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1.5 0
