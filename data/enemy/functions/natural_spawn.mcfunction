#自然沸きのクリーパーを置換する
data merge entity @s {Tags:[Spawn],DeathTime:19s,NoAI:1b,Silent:1b,DeathLootTable:"minecraft:empty"}
loot replace entity @s armor.head loot settings:enemy/natural_spawn
#召喚に失敗した場合はクリーパーのまま残す
execute unless data entity @s ArmorItems[3].tag.CustomModelData run tag @s remove Spawn
