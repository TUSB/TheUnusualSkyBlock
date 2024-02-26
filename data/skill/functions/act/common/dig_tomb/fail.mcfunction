#> skill:act/common/dig_tomb/fail
#
# 失敗時処理
#
# @within function skill:act/common/dig_tomb/act0

function makeup:skill/act/common/dig_tomb/act0
data modify storage item: Item.tag.Skill.Count set value 1
data remove storage item: Item.tag.NoHold
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"storage":"item:","nbt":"Item.tag.OriginalName","interpret":true},{"text":" ("},{"storage":"item:","nbt":"Item.tag.Skill.Count"},{"text":")"}]}}]'
execute in area:control_area run data modify storage item: Item.tag.display.Name set from block 2 3 2 Text1
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"translate":" 残り使用回数: "},{"storage":"item:","nbt":"Item.tag.Skill.Count"},{"text":"/"},{"storage":"item:","nbt":"Item.tag.Skill.MaxCount"}]}}]'
execute in area:control_area run data modify storage item: Item.tag.display.Lore[-1] set from block 2 3 2 Text1