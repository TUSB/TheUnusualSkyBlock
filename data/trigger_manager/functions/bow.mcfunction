##############################
### 弓トリガー
##############################

### 狩人＜ピアッシングエイム＞
execute if score @s PiercingAim matches 1.. run function skill_manager:hunter/piercing_aim/apply

### 狩人＜ステークスファイア＞
execute if score @s ModeSkill matches 31011..31019 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜チェインアロー＞
execute if score @s ModeSkill matches 31021..31029 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜バードストライク＞
execute if score @s ModeSkill matches 31031..31039 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜ブラストスパーク＞
execute if score @s ModeSkill matches 31051..31059 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜ワイルドフレア＞
execute if score @s ModeSkill matches 31061..31069 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜フォトニックレーザー＞
execute if score @s ModeSkill matches 31071..31079 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### トリガーリセット
scoreboard players reset @s UseBow
