##############################
### リレイズ
##############################

tag @s add SkillOnDeath
function data_manager:cursor/data_id/move
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] unless data entity @s Item.tag.Parameter.SkillOnDeath run data modify entity @s Item.tag.Parameter.SkillOnDeath set value []
execute at 1-0-0-0-0 as @e[distance=0,tag=DataHolder,limit=1] unless data entity @s {Item:{tag:{Parameter:{SkillOnDeath:[{Name:"Revival"}]}}}} run data modify entity @s Item.tag.Parameter.SkillOnDeath prepend value {Name:"Revival",Once:1b}

execute at @s anchored eyes positioned ^ ^ ^ run particle minecraft:instant_effect ~ ~ ~ 0.3 0.3 0.3 0 30 normal
