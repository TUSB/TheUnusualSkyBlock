#> debug:tusb_memory_plus/remove
data remove storage item: Item
data modify storage item: Item set from entity @s Item

execute if data storage item: Item.tag.Skill.Initializing run data remove storage item: Item.tag.display.Lore[-1]
execute if data storage item: Item.tag.Skill.Initializing run data remove storage item: Item.tag.display.Lore[-1]

execute unless data storage item: Item.tag.Skill.Initializing unless data storage item: Item.tag.UniqueName store result storage item: Item.tag.Skill.LoreCount int 1 run data get storage item: Item.tag.Skill.LoreCount 0.9999999999
execute unless data storage item: Item.tag.Skill.Initializing run function skill:trigger/set/remove_lore
execute unless data storage item: Item.tag.UniqueName run data remove storage item: Item.tag.display.Name
data remove storage item: Item.tag.UniqueName

data remove storage item: Item.tag.Skill

execute unless data storage item: Item.tag.display.Lore[-1] run data remove storage item: Item.tag.display.Lore
execute unless data storage item: Item.tag.display.Name unless data storage item: Item.tag.display.Lore run data remove storage item: Item.tag.display

data modify entity @s Item set from storage item: Item
data modify entity @s PickupDelay set value 0s

tellraw @p {"text":"スキルを削除しました。"}
