##############################
### モブがダメージを受けた時の共通処理
##############################

### HurtTimeをスコア化
scoreboard players set @s DecrementTimer 10

### スリプガ起こす
scoreboard players set @s SleepgaTime 0
execute if score @s SleepgaTime matches 0 run function skill_manager:black_mage/sleepga/tick

###---演出---Start
execute anchored eyes positioned ^ ^ ^ run particle minecraft:damage_indicator ~ ~ ~ 0.1 0.1 0.1 0.5 10 force
###---演出---End
