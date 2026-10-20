#> skill:act/common/dig_tomb/fail
#
# 失敗時処理
#
# @within function skill:act/common/dig_tomb/act0

function makeup:skill/act/common/dig_tomb/act0
data modify storage item: Item.components."minecraft:custom_data".Skill.Count set value 1
data remove storage item: Item.components."minecraft:custom_data".NoHold
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value "[{\"text\":\"\",\"color\":\"white\",\"italic\":false},{\"storage\":\"item:\",\"nbt\":\"Item.components.\\\"minecraft:custom_data\\\".OriginalName\",\"interpret\":true},{\"text\":\" (\"},{\"storage\":\"item:\",\"nbt\":\"Item.components.\\\"minecraft:custom_data\\\".Skill.Count\"},{\"text\":\")\"}]"
execute in area:control_area run data modify storage item: Item.components."minecraft:custom_name" set from block 2 3 2 front_text.messages[0]
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value "[{\"text\":\"\",\"color\":\"white\",\"italic\":false},{\"translate\":\" 残り使用回数: \"},{\"storage\":\"item:\",\"nbt\":\"Item.components.\\\"minecraft:custom_data\\\".Skill.Count\"},{\"text\":\"/\"},{\"storage\":\"item:\",\"nbt\":\"Item.components.\\\"minecraft:custom_data\\\".Skill.MaxCount\"}]"
execute in area:control_area run data modify storage item: Item.components."minecraft:lore"[-1] set from block 2 3 2 front_text.messages[0]
