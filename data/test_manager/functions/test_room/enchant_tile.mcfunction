#~ ~1 ~のSlot:1bのアイテムにSlot:7bのストラクチャーのnbtをコピーする
data modify block 0 0 0 RecordItem set from block ~ ~1 ~ Items[{Slot:7b}]
data modify block ~ ~1 ~ Items[{Slot:1b}].tag.BlockEntityTag.name set from block 0 0 0 RecordItem.tag.BlockEntityTag.name
data modify block 0 1 0 Text1 set value '[{"text":"●","color":"aqua","italic":false},{"nbt":"RecordItem.tag.BlockEntityTag.name","block":"0 0 0","color":"white","italic":false}]'
data modify block ~ ~1 ~ Items[{Slot:1b}].tag.display.Name set from block 0 1 0 Text1
data modify block ~ ~1 ~ Items[{Slot:1b}].tag.Enchantments set value [{lvl:1s}]
