#消費MPは0
scoreboard players set _ MP 0
#実行
function skill:practice/success
#カウントを1減らす
execute store result storage item: Item.tag.Skill.Count int 0.99999 run data get storage item: Item.tag.Skill.Count
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"storage":"item:","nbt":"Item.tag.OriginalName","interpret":true},{"text":" ("},{"storage":"item:","nbt":"Item.tag.Skill.Count"},{"text":")"}]}}]'
execute in area:control_area run data modify storage item: Item.tag.display.Name set from block 2 3 2 Text1
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"text":" 残り使用回数: "},{"storage":"item:","nbt":"Item.tag.Skill.Count"},{"text":"/"},{"storage":"item:","nbt":"Item.tag.Skill.MaxCount"}]}}]'
execute in area:control_area run data modify storage item: Item.tag.display.Lore[-1] set from block 2 3 2 Text1
#カウント0で破壊
execute if data storage item: Item.tag.Skill{Count:0} run function makeup:skill/practice/break_tusb_memory
execute if data storage item: Item.tag.Skill{Count:0} run data modify storage item: Item.tag.NoHold set value 1b
#アイテム更新
execute unless data storage item: Item{Slot:-106b} run item modify entity @s weapon.mainhand item:storage/item
execute if data storage item: Item{Slot:-106b} run item modify entity @s weapon.offhand item:storage/item
