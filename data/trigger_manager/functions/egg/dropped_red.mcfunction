##############################
### サポート赤ドロップ
##############################

tag @s add ShowSkillRed
scoreboard players operation @s ShowSkillNo = @s SupportSkillRed
function skill_manager:show_skill/name
scoreboard players reset @s DroppedRed
