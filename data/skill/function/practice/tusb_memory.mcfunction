#> skill:practice/tusb_memory
#消費MPは0
scoreboard players set _ MP 0
#カウントを1減らす
execute store result storage item: Item.components."minecraft:custom_data".Skill.Count int 0.99999 run data get storage item: Item.components."minecraft:custom_data".Skill.Count
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"storage":"item:","nbt":"Item.components.\\"minecraft:item_name\\"","interpret":true}," | ",{"storage":"item:","nbt":"Item.components.\\"minecraft:custom_data\\".Skill.Icon","font":"icon","color":"light_purple"},{"text":" "},{"storage":"item:","nbt":"Item.components.\\"minecraft:custom_data\\".Skill.Skill"},{"text":" ("},{"storage":"item:","nbt":"Item.components.\\"minecraft:custom_data\\".Skill.Count"},{"text":")"}]'
execute in area:control_area run data modify storage item: Item.components."minecraft:custom_name" set from block 2 3 2 front_text.messages[0]
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"translate":" 残り使用回数: "},{"storage":"item:","nbt":"Item.components.\\"minecraft:custom_data\\".Skill.Count"},{"text":"/"},{"storage":"item:","nbt":"Item.components.\\"minecraft:custom_data\\".Skill.MaxCount"}]'
execute in area:control_area run data modify storage item: Item.components."minecraft:lore"[-1] set from block 2 3 2 front_text.messages[0]
#カウント0で破壊
execute if data storage item: Item.components."minecraft:custom_data".Skill{Count:0} run function makeup:skill/practice/break_tusb_memory
execute if data storage item: Item.components."minecraft:custom_data".Skill{Count:0} run data modify storage item: Item.components."minecraft:custom_data".NoHold set value 1b
#実行
function skill:practice/success
