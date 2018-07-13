##############################
### 雪玉トリガー
##############################

### 忍者＜手裏剣＞
execute if score @s ModeSkill matches 21011..21019 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 忍者＜一閃＞
execute if score @s ModeSkill matches 21041..21049 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 忍者＜居縮＞
execute if score @s ModeSkill matches 21051..21059 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 黒魔導士＜アイスストーム＞
execute if score @s ModeSkill matches 51011..51019 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 黒魔導士＜クロスファイア＞
execute if score @s ModeSkill matches 51021..51029 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 共通＜ウィークペイント＞
execute if score @s ModeSkill matches 81011..81019 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### トリガーリセット
scoreboard players reset @s UseSnowball
