##############################
### モブがスキルダメージを受けた時
##############################

### スリプガ起こす
execute if score @s SleepgaTime matches 0.. run function skill_manager:black_mage/sleepga/wake

### ダメージ量計算
execute store result score $CurrentHP Global run data get entity @s AbsorptionAmount 100
execute unless score $CurrentHP Global = @s PreviousMobHP run function enemy_manager:update_health_info
