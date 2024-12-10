#> skill:trigger/set/set
#以前のスキルLoreを削除
execute if data storage item: Item.components."minecraft:custom_data".Skill{Type:"Job"} run function skill:trigger/set/remove_lore
#スキル名
#custom_nameへ上書きする
#item_nameがある場合は、 item_name | スキル名 になる。
data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"storage":"item:","nbt":"Item.components.\\"minecraft:item_name\\"","interpret":true}," | ",{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"}]'
data modify block 2 3 2 front_text.messages[1] set value '[{"text":"","color":"white","italic":false},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"}]'
execute if data storage item: Item.components."minecraft:item_name" run data modify storage item: Item.components."minecraft:custom_name" set from block 2 3 2 front_text.messages[0]
execute unless data storage item: Item.components."minecraft:item_name" run data modify storage item: Item.components."minecraft:custom_name" set from block 2 3 2 front_text.messages[1]
#Loreセット
#item_nameがあればスキル名をLoreに入れる
#          なければ追加しないため、LoreCount - 1
execute if data storage item: Item.components."minecraft:item_name" run data modify storage item: Item.components."minecraft:lore" append from block 2 3 2 front_text.messages[1]
execute unless data storage item: Item.components."minecraft:item_name" run execute store result storage skill: Skill.LoreCount int 0.99999 run data get storage skill: Skill.LoreCount
#説明
data modify storage item: Item.components."minecraft:lore" append from storage skill: Skill.Lore[]
#発動条件
data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"text":"K","font":"icon","color":"gold"},{"translate":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"}]'
data modify storage item: Item.components."minecraft:lore" append from block 2 3 2 front_text.messages[0]
#消費MP
data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"text":"M","font":"icon","color":"aqua"},{"translate":" 消費MP: "},{"storage":"skill:","nbt":"Skill.MP"}]'
data modify storage item: Item.components."minecraft:lore" append from block 2 3 2 front_text.messages[0]
#ダメージ
data remove storage skill: DamageJson
execute if data storage skill: Skill.Damage run function skill:trigger/set/damage_json
execute if data storage skill: Skill.Damage run data modify block 2 3 2 front_text.messages[0] set value '{"storage":"skill:","nbt":"DamageJson.Damage","italic":false,"interpret":true}'
execute if data storage skill: Skill.Damage run data modify storage item: Item.components."minecraft:lore" append from block 2 3 2 front_text.messages[0]
#インターバルチェック
data modify storage skill: Skill.ShowInterval set value 1b
#不要なNBT削除
data remove storage skill: Skill.Lore
data remove storage skill: Skill.ClickEvent
#スキル付与
data modify storage item: Item.components."minecraft:custom_data".Skill set from storage skill: Skill
data modify storage item: Item.components."minecraft:custom_data".Skill.Type set value "Job"
#プレイヤーのアイテム更新
data modify block 2 2 2 Items set value []
data modify block 2 2 2 Items append from storage item: Item
item replace entity @s weapon.mainhand from block 2 2 2 container.0
#演出
function makeup:skill/trigger/set
