##############################
### モブがダメージを受けた時の共通処理
##############################

### HurtTimeをスコア化 (ここ以外から呼ばれても良いようにstoreで代入)
execute store result score @s DecrementTimer run data get entity @s HurtTime

### スリプガ起こす
execute if score @s SleepgaTime matches 0.. run function skill_manager:black_mage/sleepga/wake

### HurtTime:10sの場合はRecentMaxDamageを初期化
scoreboard players set @e[scores={DecrementTimer=10}] RecentMaxDamage 0
execute if score @s Damage matches 0.. run function entity_manager:damage/apply
execute if score @s Damage > @s RecentMaxDamage run scoreboard players operation @s RecentMaxDamage = @s Damage
scoreboard players reset @s Damage

### ダメージ量計算
execute store result score $CurrentHP Global run data get entity @s AbsorptionAmount 100
execute unless score $CurrentHP Global = @s PreviousMobHP run function enemy_manager:update_health_info

###---演出---Start
execute anchored eyes positioned ^ ^ ^ run particle minecraft:damage_indicator ~ ~ ~ 0.1 0.1 0.1 0.5 10 force
###---演出---End
