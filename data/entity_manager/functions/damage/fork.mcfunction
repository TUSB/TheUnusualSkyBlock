##############################
### モブダメージいつ付与？
##############################

###スタックダメージ時
scoreboard players operation @s Damage = @s StackDamage
execute if score @s StackDamage matches 0.. run scoreboard players set @s RecentMaxDamage 0
###付与now
execute if score @s DecrementTimer matches 1.. if score @s Damage > @s RecentMaxDamage run function entity_manager:damage/now
###付与しない
execute if score @s DecrementTimer matches 1.. run scoreboard players reset @s Damage
###付与carry
execute if score @s DecrementTimer matches ..0 run function entity_manager:damage/carry
