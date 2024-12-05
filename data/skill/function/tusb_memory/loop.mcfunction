#tellraw @a {"nbt":"Inventory","storage":"item:"}
#スキルをロード
data modify storage skill: Skill set from storage item: TUSBM_Inventory[-1].tag.Skill
execute store result score _ _ run data get storage skill: Skill.SkillID
function skill:load/
data modify storage skill: Skill.Type set value "TUSBMemory"
data modify storage skill: Skill.Trigger set from storage item: TUSBM_Inventory[-1].tag.Skill.Trigger
data modify storage skill: Skill.Interval set from storage item: TUSBM_Inventory[-1].tag.Skill.Interval
data modify storage skill: Skill.Count set from storage item: TUSBM_Inventory[-1].tag.Skill.Count
data modify storage skill: Skill.MaxCount set from storage item: TUSBM_Inventory[-1].tag.Skill.Count
data modify storage item: TUSBM_Inventory[-1].tag.Skill set from storage skill: Skill
#元のNameを保存
data modify storage item: TUSBM_Inventory[-1].tag.OriginalName set from storage item: TUSBM_Inventory[-1].tag.display.Name
#残り使用回数を追加
#execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"storage":"item:","nbt":"Inventory[-1].tag.OriginalName","interpret":true},{"text":" ("},{"storage":"skill:","nbt":"Skill.Count"},{"text":")"}]}}]'
#execute in area:control_area run data modify storage item: TUSBM_Inventory[-1].tag.display.Name set from block 2 3 2 front_text.messages[0]
#Loreセット
data remove storage item: TUSBM_Inventory[-1].tag.display.Lore[-1]
#説明
data modify storage item: TUSBM_Inventory[-1].tag.display.Lore append from storage item: TUSBM_Inventory[-1].tag.Skill.Lore[]
#発動条件
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"text":"K","font":"icon","color":"gold"},{"translate":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"}]'
execute in area:control_area run data modify storage item: TUSBM_Inventory[-1].tag.display.Lore append from block 2 3 2 front_text.messages[0]
#ダメージ
data remove storage skill: DamageJson
execute if data storage skill: Skill.Damage in area:control_area run function skill:trigger/set/damage_json
execute if data storage skill: Skill.Damage in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '{"storage":"skill:","nbt":"DamageJson.Damage","italic":false,"interpret":true}'
execute if data storage skill: Skill.Damage in area:control_area run data modify storage item: TUSBM_Inventory[-1].tag.display.Lore append from block 2 3 2 front_text.messages[0]
#残り使用回数
execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"translate":" 残り使用回数: "},{"storage":"skill:","nbt":"Skill.Count"},{"text":"/"},{"storage":"skill:","nbt":"Skill.MaxCount"}]'
execute in area:control_area run data modify storage item: TUSBM_Inventory[-1].tag.display.Lore append from block 2 3 2 front_text.messages[0]
#シュルカーボックスにセット
data modify storage item: Items set value []
data modify storage item: Items append from storage item: TUSBM_Inventory[-1]
data modify storage item: Items[0].Slot set value 0b
#不要なNBT削除
data remove storage item: Items[0].tag.Skill.Lore
data remove storage item: Items[0].tag.Skill.ClickEvent
function item:system/shulker_box/save
#プレイヤーにルート
data modify storage item: Slot set from storage item: TUSBM_Inventory[-1].Slot
function item:system/shulker_box/loot_to_player
#再帰
data remove storage item: TUSBM_Inventory[-1]
execute if data storage item: TUSBM_Inventory[-1] run function item:tusb_memory/loop
