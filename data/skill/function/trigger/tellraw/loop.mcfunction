#> skill:trigger/tellraw/loop
#スキルをロード
data modify storage skill: Skill set from storage skill: Data.Job[-1]
#習得レベルの範囲内ならtellrawに追加
data remove storage skill: DamageJson
execute if data storage skill: Skill.Damage run function skill:trigger/set/damage_json
execute store result score _ Calc run data get storage skill: Skill.AcquireLevel.Min
execute store result score _ _ run data get storage skill: Skill.AcquireLevel.Max
execute if score _ Calc <= _ Level if score _ Level <= _ _ run data modify block 2 3 2 front_text.messages[0] set value '[{"block":"2 3 2","nbt":"front_text.messages[0]","interpret":true},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"storage":"skill:","nbt":"Skill.ClickEvent","interpret":true,"hoverEvent":{"action":"show_text","contents":[{"text":""},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" "},{"storage":"skill:","nbt":"Skill.Skill"},{"storage":"skill:","nbt":"NewLine","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[0]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[1]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[2]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[3]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[4]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[5]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[6]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[7]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[8]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[9]","interpret":true},{"storage":"skill:","nbt":"NewLine","interpret":true},{"text":"K","font":"icon","color":"gold"},{"translate":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"},{"storage":"skill:","nbt":"NewLine","interpret":true},{"text":"M","font":"icon","color":"aqua"},{"translate":" 消費MP: "},{"storage":"skill:","nbt":"Skill.MP"},{"storage":"skill:","nbt":"DamageJson.NewLine","interpret":true},{"storage":"skill:","nbt":"DamageJson.Damage","interpret":true}]}},{"text":" "}]'
#再帰
data remove storage skill: Data.Job[-1]
execute if data storage skill: Data.Job[-1] run function skill:trigger/tellraw/loop
