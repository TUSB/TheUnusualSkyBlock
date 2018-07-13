##############################
### モードエッグドロップ
##############################

execute if entity @s[tag=ModeRed] run tellraw @s {"text":"ルビーモード中！","color":"red","bold":true}
execute if entity @s[tag=ModeBlue] run tellraw @s {"text":"サファイアモード中！","color":"blue","bold":true}
###モードルビー表示
tag @s add ShowSkillRed
scoreboard players operation @s ShowSkillNo = @s ModeSkillRed
function skill_manager:show_skill/name
###モードサファイア表示
tag @s add ShowSkillBlue
scoreboard players operation @s ShowSkillNo = @s ModeSkillBlue
function skill_manager:show_skill/name
###スコアリセット
scoreboard players reset @s DroppedMode

### 共通＜ライブラ＞
execute if score @s ModeSkill matches 81021..81029 run scoreboard players operation @s ActiveSkill = @s ModeSkill
