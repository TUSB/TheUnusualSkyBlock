##############################
### セイクリッドピラー発動
##############################

###HP算出前処理
execute store result score @s PillarDamage run data get entity @s Health 100
effect give @s minecraft:instant_health 1 20 true
tag @s add DelayedTask
