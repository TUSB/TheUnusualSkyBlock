##############################
### サポート青ドロップ
##############################

tag @s add ShowSkillBlue
scoreboard players operation @s ShowSkillNo = @s SupportSkillBlue
function skill_manager:show_skill/name
scoreboard players reset @s DroppedBlue
