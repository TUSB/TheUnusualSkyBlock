#スキルをロード
data modify storage skill: Skill set from storage item: Inventory[-1].tag.Skill
execute store result score _ _ run data get storage skill: Skill.SkillID
function skill:load/
data modify storage skill: Skill.Type set value "TUSBMemory"
data modify storage skill: Skill.Trigger set from storage item: Inventory[-1].tag.Skill.Trigger
data modify storage skill: Skill.Count set from storage item: Inventory[-1].tag.Skill.Count
data modify storage item: Inventory[-1].tag.Skill set from storage skill: Skill
#Loreセット
data remove storage item: Inventory[-1].tag.display.Lore[-1]
#説明
data modify storage item: Inventory[-1].tag.display.Lore append from storage item: Inventory[-1].tag.Skill.Lore[]
#発動条件
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"text":"K","font":"icon","color":"gold"},{"text":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"}]}}]'
execute in area:control_area run data modify storage item: Inventory[-1].tag.display.Lore append from block 2 3 2 Text1
#残り使用回数
execute in area:control_area run data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"text":" 残り使用回数: "},{"storage":"skill:","nbt":"Skill.Count"}]}}]'
execute in area:control_area run data modify storage item: Inventory[-1].tag.display.Lore append from block 2 3 2 Text1
#シュルカーボックスにセット
data modify storage item: Items set value []
data modify storage item: Items append from storage item: Inventory[-1]
data modify storage item: Items[0].Slot set value 0b
#不要なNBT削除
data remove storage item: Items[0].tag.Skill.Lore
data remove storage item: Items[0].tag.Skill.ClickEvent
function item:system/shulker_box/save
#プレイヤーにルート
data modify storage item: Slot set from storage item: Inventory[-1].Slot
function item:system/shulker_box/loot_to_player
#再帰
data remove storage item: Inventory[-1]
execute if data storage item: Inventory[-1] run function item:tusb_memory/loop
