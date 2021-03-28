#エンチャント情報を保存
execute if data storage item: Enchant.Item.tag.Enchantments[].Unique run function item:enchant/enchant/unique/fork
data modify storage item: Items[{Slot:4b}].tag.Enchantments append from storage item: Enchant.Item.tag.Enchantments[]
data modify storage item: Items[{Slot:4b}].tag.display.Lore append from storage item: Enchant.Item.tag.EnchantLore[]
