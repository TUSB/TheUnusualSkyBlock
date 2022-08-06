#> debug:engraving/remove_enchant

execute as @e[tag=EngravingItem,limit=1] run data modify storage item: Item set from entity @s Item

function debug:engraving/check_unique
execute store result score _ _ run data get storage item: Item.tag.Enchantments
scoreboard players remove _ _ 1
function debug:engraving/lore/remove

data remove storage item: Item.tag.OriginalLore
data remove storage item: Item.tag.AddDamage
data remove storage item: Item.tag.Enchantments
data remove storage item: Item.tag.AttributeModifiers[{Name:"エンチャント"}]

execute unless data storage item: Item.tag.display.Lore[-1] run data remove storage item: Item.tag.display.Lore
execute unless data storage item: Item.tag.display.Name unless data storage item: Item.tag.display.Lore run data remove storage item: Item.tag.display
execute unless data storage item: Item.tag.AttributeModifiers[-1] run data remove storage item: Item.tag.AttributeModifiers

execute as @e[tag=EngravingItem,limit=1] run data modify entity @s Item set from storage item: Item
data modify entity @e[tag=EngravingItem,limit=1] PickupDelay set value 0s

tellraw @s [{"text":"エンチャントを削除しました。","color":"gray","bold":true}]
