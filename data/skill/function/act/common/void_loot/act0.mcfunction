#> skill:act/common/void_loot/act0
data modify storage item: Items set value []
data modify storage item: Items append from storage item: Item.components."minecraft:custom_data".VoidItems[0]
data remove storage item: Item.components."minecraft:custom_data".VoidItems[0]
execute anchored eyes run summon item ^ ^ ^1 {Item:{id:"minecraft:stick",components:{"minecraft:custom_data":{NoHold:1b}},count:1}}
execute anchored eyes positioned ^ ^ ^1 run data modify entity @e[type=item,nbt={Item:{id:"minecraft:stick"}},distance=0,limit=1] Item set from storage item: Items[0]

execute anchored eyes positioned ^ ^ ^1 run function makeup:skill/act/common/void_loot/act0
