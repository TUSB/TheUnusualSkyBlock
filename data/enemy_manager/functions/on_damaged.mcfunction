##############################
### モブがダメージを受けた時の共通処理
##############################

### HurtTimeをスコア化
scoreboard players set @s DecrementTimer 10

###---演出---Start
execute anchored eyes positioned ^ ^ ^ run particle minecraft:damage_indicator ~ ~ ~ 0.1 0.1 0.1 0.5 10 force
###---演出---End


