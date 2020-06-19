data modify storage cards Shuffle set value []
data modify block 0 0 0 RecordItem.tag.UsedID set value []

data modify block 0 2 0 LootTable set value "casino_manager:cards/2set"
loot insert 0 2 0 loot minecraft:blocks/blue_carpet
data modify storage cards Shuffle append from block 0 2 0 Items[]
data modify block 0 0 0 RecordItem.tag.UsedID append from block 0 2 0 Items[].tag.ID

data modify block 0 2 0 LootTable set value "casino_manager:cards/2set"
loot insert 0 2 0 loot minecraft:blocks/blue_carpet
data modify storage cards Shuffle append from block 0 2 0 Items[]
data modify block 0 0 0 RecordItem.tag.UsedID append from block 0 2 0 Items[].tag.ID

data modify block 0 2 0 LootTable set value "casino_manager:cards/2set"
loot insert 0 2 0 loot minecraft:blocks/blue_carpet
data modify storage cards Shuffle append from block 0 2 0 Items[]
data modify block 0 0 0 RecordItem.tag.UsedID append from block 0 2 0 Items[].tag.ID

data modify block 0 2 0 LootTable set value "casino_manager:cards/2set"
loot insert 0 2 0 loot minecraft:blocks/blue_carpet
data modify storage cards Shuffle append from block 0 2 0 Items[]
data modify block 0 0 0 RecordItem.tag.UsedID append from block 0 2 0 Items[].tag.ID

data remove storage cards Shuffle[{id:"minecraft:blue_carpet"}]
data remove storage cards Shuffle[].Slot
