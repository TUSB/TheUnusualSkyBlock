#> skill:shortcut/tick
### ショートカット表示中tick

scoreboard players operation * ParentID -= @s OhMyDatID

#パーティクル表示
execute if score @s SkillShortcut matches ..999 at @e[tag=SkillShortcut,tag=Center,scores={ParentID=0},distance=..10] positioned ^ ^0.85 ^ run function makeup:skill/shortcut/frame
execute if score @s SkillShortcut matches 1000.. at @e[tag=SkillShortcut,tag=Center,scores={ParentID=0},distance=..10] positioned ^ ^0.85 ^ run function makeup:skill/shortcut/modify_frame
execute anchored eyes positioned ^ ^-0.85 ^5 at @e[tag=SkillShortcut,scores={ParentID=0},distance=..6,limit=1,sort=nearest] positioned ^ ^0.85 ^ run function makeup:skill/shortcut/cursor

#スキルをアイテムにセット
execute if score @s SkillShortcut matches ..50 anchored eyes positioned ^ ^-0.85 ^5 at @e[tag=SkillShortcut,scores={ParentID=0},distance=..6,limit=1,sort=nearest] if entity @e[tag=SkillShortcut,tag=!Center,scores={ParentID=0},distance=..0.01] run function skill:shortcut/set/set


#離れたらkill
execute if entity @e[tag=SkillShortcut,tag=Center,scores={ParentID=0},distance=10..] run scoreboard players reset @s SkillShortcut
execute if entity @e[tag=SkillShortcut,tag=Center,scores={ParentID=0},distance=10..] run kill @e[tag=SkillShortcut,scores={ParentID=0},distance=..13]

scoreboard players operation * ParentID += @s OhMyDatID

execute if score @s SkillShortcut matches 1000 run function skill:shortcut/reset
scoreboard players remove @s SkillShortcut 1

