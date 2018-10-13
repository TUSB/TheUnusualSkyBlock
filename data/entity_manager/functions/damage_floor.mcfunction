##############################
### ダメージ床処理
##############################

effect give @s minecraft:instant_damage 1 2

###---演出---Start
particle minecraft:dust 1 10000 0 1.5 ~ ~1 ~ 0.5 1.2 0.5 0 15 force
particle minecraft:flame ~ ~ ~ 0.4 0 0.4 0.1 15 force
playsound minecraft:block.redstone_torch.burnout master @s ~ ~ ~ 0.6 0
###---演出---End

