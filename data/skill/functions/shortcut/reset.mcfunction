### リセット
scoreboard players operation * ParentID -= @s OhMyDatID
kill @e[tag=SkillShortcut,scores={ParentID=0}]
scoreboard players operation * ParentID += @s OhMyDatID

scoreboard players reset @s SkillShortcut
