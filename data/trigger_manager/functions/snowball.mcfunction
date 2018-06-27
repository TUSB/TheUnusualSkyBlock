##############################
### 雪玉トリガー
##############################

### 忍者＜一閃＞
execute if score @s ModeSkill matches 21041..21049 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 共通＜ウィークペイント＞
execute if score @s ModeSkill matches 81011..81019 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### トリガーリセット
scoreboard players reset @s UseSnowball
