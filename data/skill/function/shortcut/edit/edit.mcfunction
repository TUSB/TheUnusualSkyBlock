#> skill:shortcut/edit/edit
### ショートカット編集

#スキルをロード
scoreboard players operation _ _ = @s ChangeSkill
function skill:load/job

function #oh_my_dat:please

execute if score _ SkillShortcut matches 10 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut[0] set from storage skill: Skill
execute if score _ SkillShortcut matches 11 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut[1] set from storage skill: Skill
execute if score _ SkillShortcut matches 12 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut[2] set from storage skill: Skill
execute if score _ SkillShortcut matches 13 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut[3] set from storage skill: Skill
execute if score _ SkillShortcut matches 14 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut[4] set from storage skill: Skill
execute if score _ SkillShortcut matches 15 run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].SkillShortcut[5] set from storage skill: Skill

function makeup:skill/shortcut/sound

execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":""},{"storage":"skill:","nbt":"Skill.Icon","font":"icon","color":"green"},{"storage":"skill:","nbt":"Skill.Skill"}]'
execute in area:control_area run data modify storage skill: Skill.SkillName set from block 2 3 2 front_text.messages[0]
data modify entity @e[tag=SkillShortcut,scores={ParentID=0},distance=..0.01,limit=1,sort=nearest] CustomName set from storage skill: Skill.SkillName
execute store result score @e[tag=SkillShortcut,scores={ParentID=0},distance=..0.01,limit=1,sort=nearest] ChangeSkill run data get storage skill: Skill.ChangeSkill
