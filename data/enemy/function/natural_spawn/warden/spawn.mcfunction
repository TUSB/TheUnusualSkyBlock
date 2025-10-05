#> enemy:warden_spawn/spawn
# @within function enemy:warden_spawn/condition

#自然湧きのWardenにスポーンタグを付与
tag @s add Spawn
loot replace entity @s armor.head loot settings:enemy/warden_spawn

#召喚に失敗した場合はそのまま残す
execute unless data entity @s ArmorItems[3].tag.CustomModelData run tag @s remove Spawn