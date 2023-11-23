#自然湧きのVexにスポーンタグを付与
tag @s add Spawn
loot replace entity @s armor.head loot settings:enemy/natural_spawn
function enemy:natural_spawn_modify_level
#召喚に失敗した場合はそのまま残す
execute unless data entity @s ArmorItems[3].tag.CustomModelData run tag @s remove Spawn