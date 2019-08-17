##############################
### スキル定義持ちかどうか判定
##############################

### Skill
execute at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.Skill run function status_manager:definition_reader/skill/read
### SkillOnHurt
execute at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.SkillOnHurt run tag @s add SkillOnHurt
### SkillOnDeath
execute at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.SkillOnDeath run tag @s add SkillOnDeath
### SkillOnFin
execute at 1-0-0-0-0 if data entity @e[distance=0,tag=DataHolder,limit=1] Item.tag.Parameter.SkillOnFin run tag @s add SkillOnFin
