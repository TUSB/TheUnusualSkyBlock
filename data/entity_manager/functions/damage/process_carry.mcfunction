##############################
### モブ持ち越しダメージ処理
##############################

function entity_manager:damage/apply
execute if score @s Damage > @s RecentMaxDamage run scoreboard players operation @s RecentMaxDamage = @s Damage
scoreboard players reset @s Damage
