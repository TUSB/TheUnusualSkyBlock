#消費MPは0
scoreboard players set _ MP 0
#実行
function skill:practice/success
#カウントを1減らす
execute store result storage item: Item.tag.Skill.Count int 0.99999 run data get storage item: Item.tag.Skill.Count
data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"text":" 残り使用回数: "},{"storage":"item:","nbt":"Item.tag.Skill.Count"}]}}]'
data modify storage item: Item.tag.display.Lore[-1] set from block 2 3 2 Text1
#スロットを保存
data modify storage item: Slot set from storage item: Item.Slot
data remove storage item: Item.Slot
#カウント0で破壊
execute if data storage item: Item.tag.Skill{Count:0} at @s run function makeup:skill/practice/break_tusb_memory
execute if data storage item: Item.tag.Skill{Count:0} run data remove storage item: Item
#アイテム更新
data modify storage item: Items set value []
data modify storage item: Items append from storage item: Item
function item:system/shulker_box/save
function item:system/shulker_box/loot_to_player
