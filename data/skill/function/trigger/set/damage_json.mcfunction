#> skill:trigger/set/damage_json
data modify storage skill: damagejson.newline set value '[{"storage":"skill:","nbt":"NewLine","interpret":true}]'
execute if data storage skill: Skill.Damage.Physical run data modify storage skill: damagejson.physical set value '[{"text":""},{"text":"p","font":"icon","color":"white"},{"storage":"skill:","nbt":"Skill.Damage.Physical","color":"white"}]'
data modify storage skill: damagejson.damage set value '[{"text":"✦ ","color":"light_purple"},{"translate":"ダメージ: ","color":"white"},{"storage":"skill:","nbt":"damagejson.physical","interpret":true}]'
