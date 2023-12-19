#自然湧きのVexにスポーンタグを付与
tag @s add Spawn
tag @s add NaturalSpawn
loot replace entity @s armor.head loot settings:enemy/natural_spawn
# 村人召喚時処理
    execute if data entity @s ArmorItems[3].tag{SpawnEntities:[[{Tags:[Global,Friendly,Blow,CommonVillager],Level:1}]]} run function enemy:natural_villager
function enemy:natural_spawn_modify_level
#召喚に失敗した場合はそのまま残す
execute unless data entity @s ArmorItems[3].tag.CustomModelData run tag @s remove Spawn