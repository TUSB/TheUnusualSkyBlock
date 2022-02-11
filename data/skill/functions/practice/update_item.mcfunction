#インターバル適用
execute store result storage item: Item.tag.Skill.LastUsed int 1 run time query gametime

#アイテム更新
execute unless data storage item: Item{Slot:-106b} run item modify entity @s weapon.mainhand item:storage/item
execute if data storage item: Item{Slot:-106b} run item modify entity @s weapon.offhand item:storage/item
