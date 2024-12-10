#> skill:shortcut/gui/edge

# 名前が一瞬表示されてしまわないように空に設定する
summon area_effect_cloud ^ ^ ^ {Tags:[SkillShortcut],Duration:50,CustomName:'""',CustomNameVisible:1b}

execute in area:control_area run data modify block 2 3 2 front_text.messages[0] set value '[{"text":""},{"storage":"skill:","nbt":"SkillShortcut[0].Icon","font":"icon","color":"green"},{"storage":"skill:","nbt":"SkillShortcut[0].Skill"}]'
execute in area:control_area run data modify storage skill: SkillShortcut[0].SkillName set from block 2 3 2 front_text.messages[0]
data modify entity @e[tag=SkillShortcut,tag=!Initialized,distance=..0.01,limit=1,sort=nearest] CustomName set from storage skill: SkillShortcut[0].SkillName
execute store result score @e[tag=SkillShortcut,tag=!Initialized,distance=..0.01,limit=1,sort=nearest] ChangeSkill run data get storage skill: SkillShortcut[0].ChangeSkill

scoreboard players operation @e[tag=SkillShortcut,tag=!Initialized,distance=..0.01,limit=1,sort=nearest] SkillShortcut = _ SkillShortcut
scoreboard players add _ SkillShortcut 1

data remove storage skill: SkillShortcut[0]
