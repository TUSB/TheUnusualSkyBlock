##############################
### 現在の設定スキル一覧表示
##############################

tellraw @s ["設定中のモードスキル"]
scoreboard players operation @s ShowSkillNo = @s ModeSkillRed
tag @s add ShowSkillRed
function skill_manager:show_skill/name
scoreboard players operation @s ShowSkillNo = @s ModeSkillBlue
tag @s add ShowSkillBlue
function skill_manager:show_skill/name
tellraw @s ["設定中のサポートスキル"]
scoreboard players operation @s ShowSkillNo = @s SupportSkillRed
tag @s add ShowSkillRed
function skill_manager:show_skill/name
scoreboard players operation @s ShowSkillNo = @s SupportSkillBlue
tag @s add ShowSkillBlue
function skill_manager:show_skill/name
