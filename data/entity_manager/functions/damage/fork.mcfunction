##############################
### モブダメージいつ付与？
##############################

###付与now
execute if score @s DecrementTimer matches 1.. if score @s Damage > @s RecentMaxDamage run function entity_manager:damage/now
###付与しない
execute if score @s DecrementTimer matches 1.. run scoreboard players reset @s Damage
###付与carry
execute if score @s DecrementTimer matches ..0 run function entity_manager:damage/carry
