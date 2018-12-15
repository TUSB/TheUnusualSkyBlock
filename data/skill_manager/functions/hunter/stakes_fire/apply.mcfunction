##############################
### ステークスファイア適用
##############################

###ダメージ補正
execute store result score $Damage Global run data get entity @s damage 10
scoreboard players operation $Damage Global *= $Magnify Global
execute store result entity @s damage double 0.1 run scoreboard players get $Damage Global

###毎tick処理用タグ設定
execute if score $Magnify Global matches ..0 run tag @s add StakesFailed
execute if score $Magnify Global matches 1.. run tag @s add StakesSucceeded
tag @s add FlyingRequired

###飛翔物スコア付与
execute if entity @s[tag=StakesSucceeded] run scoreboard players operation @s ProjectileSkill = $ProjectileSkill Global

###---演出---Start
execute if entity @s[tag=StakesFailed] run playsound minecraft:block.fire.extinguish master @a[distance=..16] ~ ~ ~ 1 1
execute if entity @s[tag=StakesFailed] run playsound minecraft:item.shield.break master @a[distance=..16] ~ ~ ~ 1 0.8
execute if entity @s[tag=StakesSucceeded] run playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 1 0.5
execute if entity @s[tag=StakesSucceeded] run playsound minecraft:item.firecharge.use master @a[distance=..16] ~ ~ ~ 1 1.5
###---演出---End