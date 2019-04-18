##############################
### HP管理データセット
##############################

### HP最大値をセット
execute store result score @s MobMaxHealth run data get entity @s AbsorptionAmount
### 緩衝体力がなければHPから取得
execute if score @s MobMaxHealth matches 0 store result score @s MobMaxHealth run data get entity @s Health

### 緩衝体力を1,000,000にセット
execute store result entity @s AbsorptionAmount float 1000000 run scoreboard players set $_ Global 1

### HP現在値をセット
scoreboard players operation @s MobHealth = @s MobMaxHealth
### 直前ダメージを初期化
scoreboard players set @s MobLastDamage 0

### HP管理対象タグを付与
tag @s add HealthManaged
