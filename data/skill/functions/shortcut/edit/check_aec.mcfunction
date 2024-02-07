### 中心のAEC以外かどうか確認

scoreboard players operation * ParentID -= @s OhMyDatID

scoreboard players operation _ SkillShortcut = @e[tag=SkillShortcut,scores={ParentID=0},distance=..10,limit=1,sort=nearest] SkillShortcut

execute if score _ SkillShortcut matches 10..15 at @e[tag=SkillShortcut,scores={ParentID=0},distance=..10,limit=1,sort=nearest] run function skill:shortcut/edit/edit
execute unless score _ SkillShortcut matches 10..15 run function makeup:skill/shortcut/error

scoreboard players operation * ParentID += @s OhMyDatID
