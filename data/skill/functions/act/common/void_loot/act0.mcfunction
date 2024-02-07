data modify storage item: Items set value []
data modify storage item: Items append from storage item: Item.tag.VoidItems[0]
data remove storage item: Item.tag.VoidItems[0]
execute anchored eyes run summon item ^ ^ ^1 {Item:{id:"minecraft:stick",Count:1b,tag:{NoHold:1b}}}
execute anchored eyes positioned ^ ^ ^1 run data modify entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=0,limit=1] Item set from storage item: Items[0]

execute anchored eyes positioned ^ ^ ^1 run function makeup:skill/act/common/void_loot/act0
