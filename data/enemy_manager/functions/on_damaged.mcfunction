##############################
### モブがダメージを受けた時の共通処理
##############################

### HurtTimeをスコア化
scoreboard players set @s DecrementTimer 5

### スリプガ起こす
execute if score @s SleepgaTime matches 0.. run function skill_manager:black_mage/sleepga/wake

###---演出---Start
execute anchored eyes positioned ^ ^ ^ run particle minecraft:damage_indicator ~ ~ ~ 0.1 0.1 0.1 0.5 10 force
###---演出---End
