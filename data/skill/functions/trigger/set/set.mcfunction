#以前のスキルLoreを削除
execute if data storage item: Items[0].tag.Skill{Type:"Job"} run function skill:trigger/set/remove_lore
#Loreセット
#スキル名
data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"}]'
data modify storage item: Items[0].tag.display.Lore append from block 2 3 2 Text1
#説明
data modify storage item: Items[0].tag.display.Lore append from storage skill: Skill.Lore[]
#発動条件
data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"text":"K","font":"icon","color":"gold"},{"text":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"}]}}]'
data modify storage item: Items[0].tag.display.Lore append from block 2 3 2 Text1
#消費MP
data modify block 2 3 2 Text1 set value '[{"text":"","color":"white","italic":false},{"text":"M","font":"icon","color":"aqua"},{"text":" 消費MP: "},{"storage":"skill:","nbt":"Skill.MP"}]}}]'
data modify storage item: Items[0].tag.display.Lore append from block 2 3 2 Text1
#スキル付与
data modify storage item: Items[0].tag.Skill set from storage skill: Skill
data modify storage item: Items[0].tag.Skill.Type set value "Job"
#不要なNBT削除
data remove storage item: Items[0].tag.Skill.Lore
data remove storage item: Items[0].tag.Skill.ClickEvent
#シュルカーボックスにセット
function item:system/shulker_box/save
#プレイヤーにルート
data modify storage item: Slot set from entity @s SelectedItemSlot
function item:system/shulker_box/loot_to_player
#演出
execute at @s run function makeup:skill/trigger/set
