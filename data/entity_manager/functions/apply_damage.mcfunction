##############################
### モブダメージ付与
##############################

###被ロック時演算
execute if score @s DecrementTimer matches 10 run function entity_manager:apply_damage_unlock
execute if score @s DecrementTimer matches ..0 run function entity_manager:apply_damage_unlock

###スコアリセット
scoreboard players set @s Damage 0
