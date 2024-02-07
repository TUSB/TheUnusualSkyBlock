data modify entity @s CustomName set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName run data modify entity @s CustomName set value ''
execute in area:control_area run loot replace block 2 2 2 container.0 loot enemy:name_with_level
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[0]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4]."ステータス".CustomName in area:control_area run data modify entity @s CustomName set from block 2 2 2 Items[0].tag.display.Lore[1]

execute if entity @s[tag=LifeScouter] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].LifeScouter.OriginalName set from entity @s CustomName
