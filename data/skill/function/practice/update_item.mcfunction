#> skill:practice/update_item
#インターバル適用
execute store result storage item: Item.components."minecraft:custom_data".Skill.LastUsed int 1 run time query gametime
execute unless data storage item: Item.components."minecraft:custom_data".Skill{Interval:0} run data modify storage item: Item.components."minecraft:custom_data".Skill.ShowInterval set value 1b

# ブリッツマニューバ - 付与直後は除外
execute if score @s BlitzManover matches 0.. unless score @s BlitzManover matches 100 unless score @s BlitzManover matches 1200 run function skill:act/black_mage/blitz_manover/trigger

#アイテム更新
execute in area:control_area run data modify block 2 2 2 Items set value []
execute in area:control_area run data modify block 2 2 2 Items append from storage item: Item
execute unless data storage item: Item.Slot in area:control_area run item replace entity @s weapon.mainhand from block 2 2 2 container.0
execute if data storage item: Item{Slot:-106b} in area:control_area run item replace entity @s weapon.offhand from block 2 2 2 container.0
execute if data storage item: Item{Slot:100b} in area:control_area run item replace entity @s armor.feet from block 2 2 2 container.0
execute if data storage item: Item{Slot:101b} in area:control_area run item replace entity @s armor.legs from block 2 2 2 container.0
execute if data storage item: Item{Slot:102b} in area:control_area run item replace entity @s armor.chest from block 2 2 2 container.0
execute if data storage item: Item{Slot:103b} in area:control_area run item replace entity @s armor.head from block 2 2 2 container.0
