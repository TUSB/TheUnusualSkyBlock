
execute as @e[tag=EngravingItem] run data modify storage item: Item set from entity @s Item

data remove storage item: Item.tag.Engraving
data remove storage item: Item.tag.display.Lore[0]
execute unless data storage item: Item.tag.display.Lore[-1] run data remove storage item: Item.tag.display.Lore
execute unless data storage item: Item.tag.display.Name unless data storage item: Item.tag.display.Lore run data remove storage item: Item.tag.display

execute as @e[tag=EngravingItem] run data modify entity @s Item set from storage item: Item
data modify entity @e[tag=EngravingItem,limit=1] PickupDelay set value 0s

tellraw @s [{"text":"刻印を削除しました。","color":"gray","bold":true}]
