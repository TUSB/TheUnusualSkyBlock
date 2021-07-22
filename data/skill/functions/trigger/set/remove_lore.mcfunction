#LoreCount回だけ末尾のLore削除
data remove storage item: Items[0].tag.display.Lore[-1]
execute store result storage item: Items[0].tag.Skill.LoreCount int 0.99999 run data get storage item: Items[0].tag.Skill.LoreCount
execute unless data storage item: Items[0].tag.Skill{LoreCount:0} run function skill:trigger/set/remove_lore
