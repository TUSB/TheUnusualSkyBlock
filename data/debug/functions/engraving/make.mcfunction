
function debug:engraving/lore/

data modify storage item: EngravingSet.EnchantStone set value true

data modify entity @s Item.tag.display.Lore prepend from storage item: EngravingSet.Lore
data remove storage item: EngravingSet.Lore
data modify entity @s Item.tag.Engraving set from storage item: EngravingSet
data modify entity @s PickupDelay set value 0

tellraw @p {"text": "刻印を付与しました。","color": "green","bold": true}
