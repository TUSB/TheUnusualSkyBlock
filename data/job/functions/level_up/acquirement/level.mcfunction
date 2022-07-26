
### スキル習得 レベル分岐

data remove storage skill: Skill
execute if score _ Level matches 0 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:0}}]
execute if score _ Level matches 1 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:1}}]
execute if score _ Level matches 3 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:3}}]
execute if score _ Level matches 5 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:5}}]
execute if score _ Level matches 8 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:8}}]
execute if score _ Level matches 10 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:10}}]
execute if score _ Level matches 13 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:13}}]
execute if score _ Level matches 15 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:15}}]
execute if score _ Level matches 17 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:17}}]
execute if score _ Level matches 18 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:18}}]
execute if score _ Level matches 20 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:20}}]
execute if score _ Level matches 23 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:23}}]
execute if score _ Level matches 25 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:25}}]
execute if score _ Level matches 26 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:26}}]
execute if score _ Level matches 28 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:28}}]
execute if score _ Level matches 30 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:30}}]
execute if score _ Level matches 33 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:33}}]
execute if score _ Level matches 35 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:35}}]
execute if score _ Level matches 37 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:37}}]
execute if score _ Level matches 38 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:38}}]
execute if score _ Level matches 39 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:39}}]
execute if score _ Level matches 40 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:40}}]
execute if score _ Level matches 43 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:43}}]
execute if score _ Level matches 45 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:45}}]
execute if score _ Level matches 46 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:46}}]
execute if score _ Level matches 48 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:48}}]
execute if score _ Level matches 49 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:49}}]
execute if score _ Level matches 50 run data modify storage skill: Skill set from storage skill: Data.Job[{AcquireLevel:{Min:50}}]

execute if data storage skill: Skill if score _ Ret matches 0 in area:control_area run data modify block 2 3 2 Text1 set value '{"translate":"・新しいスキルを覚えた！"}'
execute if data storage skill: Skill in area:control_area run data modify block 2 3 2 Text1 set value '[{"block":"2 3 2","nbt":"Text1","interpret":true},"\\n ",{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"storage":"skill:","nbt":"Skill.Skill","hoverEvent":{"action":"show_text","contents":[{"text":""},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"text":" ","interpret":true},{"storage":"skill:","nbt":"Skill.Skill"},{"storage":"skill:","nbt":"NewLine","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[0]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[1]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[2]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[3]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[4]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[5]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[6]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[7]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[8]","interpret":true},{"storage":"skill:","nbt":"Skill.Lore[9]","interpret":true},{"storage":"skill:","nbt":"NewLine","interpret":true},{"text":"K","font":"icon","color":"gold"},{"translate":" 発動条件: "},{"storage":"skill:","nbt":"Skill.Trigger"},{"storage":"skill:","nbt":"NewLine","interpret":true},{"text":"M","font":"icon","color":"aqua"},{"translate":" 消費MP: "},{"storage":"skill:","nbt":"Skill.MP"}]}}]'
execute if data storage skill: Skill run scoreboard players set _ Ret 1
