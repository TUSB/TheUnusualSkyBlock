#> enemy:natural_spawn/silverfish/spawn
# @within function enemy:natural_spawn/silverfish/condition

#自然湧きのSliverfishにスポーンタグを付与
tag @s add Spawn
loot replace entity @s armor.head loot settings:enemy/silverfish_spawn
#召喚に失敗した場合はそのまま残す
execute unless data entity @s ArmorItems[3].tag.CustomModelData run tag @s remove Spawn
