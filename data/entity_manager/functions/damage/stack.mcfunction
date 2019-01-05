##############################
### モブスタックダメージ補正
##############################

###スタックダメージ時
scoreboard players operation @s Damage = @s StackDamage
scoreboard players set @s RecentMaxDamage 0
scoreboard players reset @s StackDamage
