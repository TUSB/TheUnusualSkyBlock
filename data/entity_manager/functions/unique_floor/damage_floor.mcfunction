##############################
### ダメージ床処理
##############################

execute if score @s Age matches 1.. run effect give @s minecraft:instant_damage 1 2

### 死亡時メッセージ
# function trigger_manager:death に移行

###---演出---Start
execute if score @s Age matches 1.. run particle minecraft:dust 1 10000 0 1.5 ~ ~1 ~ 0.5 1.2 0.5 0 15 force
execute if score @s Age matches 1.. run particle minecraft:flame ~ ~ ~ 0.4 0 0.4 0.1 15 force
execute if score @s Age matches 1.. run playsound minecraft:block.redstone_torch.burnout master @s ~ ~ ~ 0.6 0
###---演出---End
