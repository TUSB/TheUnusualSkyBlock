#初回スキル付与時 固有のNameがあるか確認
execute unless data storage item: Item.tag.Skill if data storage item: Item.tag.display.Name run data modify storage item: Item.tag.UniqueName set value 1b
#以前のスキルLoreを削除
execute if data storage item: Item.tag.Skill{Type:"Job"} run function skill:trigger/set/remove_lore
#Loreセット
#スキル名
data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"}]'
#固有のNameがなければスキル名をNameに入れる LoreCount-1
execute unless data storage item: Item.tag.UniqueName run data modify storage item: Item.tag.display.Name set from block 2 3 2 front_text.messages[0]
execute unless data storage item: Item.tag.UniqueName store result storage skill: Skill.LoreCount int 0.99999 run data get storage skill: Skill.LoreCount
#固有のNameがあればスキル名をLoreに入れる
execute if data storage item: Item.tag.UniqueName run data modify storage item: Item.tag.display.Lore append from block 2 3 2 front_text.messages[0]
#説明
data modify storage item: Item.tag.display.Lore append from storage skill: Skill.Lore[]
#発動条件
data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"text":"K","font":"icon","color":"gold"},{"translate":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"}]'
data modify storage item: Item.tag.display.Lore append from block 2 3 2 front_text.messages[0]
#消費MP
data modify block 2 3 2 front_text.messages[0] set value '[{"text":"","color":"white","italic":false},{"text":"M","font":"icon","color":"aqua"},{"translate":" 消費MP: "},{"storage":"skill:","nbt":"Skill.MP"}]'
data modify storage item: Item.tag.display.Lore append from block 2 3 2 front_text.messages[0]
#ダメージ
data remove storage skill: DamageJson
execute if data storage skill: Skill.Damage run function skill:trigger/set/damage_json
execute if data storage skill: Skill.Damage run data modify block 2 3 2 front_text.messages[0] set value '{"storage":"skill:","nbt":"DamageJson.Damage","italic":false,"interpret":true}'
execute if data storage skill: Skill.Damage run data modify storage item: Item.tag.display.Lore append from block 2 3 2 front_text.messages[0]
#インターバルチェック
data modify storage skill: Skill.ShowInterval set value 1b
#スキル付与
data modify storage item: Item.tag.Skill set from storage skill: Skill
data modify storage item: Item.tag.Skill.Type set value "Job"
#不要なNBT削除
data remove storage item: Item.tag.Skill.Lore
data remove storage item: Item.tag.Skill.ClickEvent
#プレイヤーのアイテム更新
item modify entity @s weapon.mainhand item:storage/item
#演出
function makeup:skill/trigger/set
