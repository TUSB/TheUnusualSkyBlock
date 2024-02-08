### アイテムにスキルセット

scoreboard players operation @s ChangeSkill = @e[tag=SkillShortcut,tag=!Center,scores={ParentID=0},distance=..0.01,limit=1,sort=nearest] ChangeSkill
#skill:triggerの成功フラグリセット
scoreboard players set _ _ 0
#スキル未設定時
execute if score @s ChangeSkill matches 0 run function makeup:skill/shortcut/error
#スキル設定時
execute if score @s ChangeSkill matches 100..999 run function skill:trigger/
#成功時
execute if score _ _ matches 1 run tellraw @s [{"entity":"@e[tag=SkillShortcut,tag=!Center,scores={ParentID=0},distance=..0.01,limit=1,sort=nearest]","nbt":"CustomName","interpret":true},{"translate":" をセットしました。"}]

#リセット
scoreboard players set @s SkillShortcut 1000
