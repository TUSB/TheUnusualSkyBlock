#> skill:trigger/set/remove_lore
#LoreCount回だけ末尾のLore削除
data remove storage item: Item.components."minecraft:lore"[-1]
execute store result storage item: Item.components."minecraft:custom_data".Skill.LoreCount int 0.99999 run data get storage item: Item.components."minecraft:custom_data".Skill.LoreCount
execute unless data storage item: Item.components."minecraft:custom_data".Skill{LoreCount:0} run function skill:trigger/set/remove_lore
