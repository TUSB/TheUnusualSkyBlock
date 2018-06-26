##############################
### 弓トリガー
##############################

### 狩人＜ピアッシングエイム＞
execute if score @s PiercingAim matches 1 run function skill_manager:hunter/piercing_aim/apply

### 狩人＜バードストライク＞
execute if score @s ModeSkill matches 31031..31039 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜ワイルドフレア＞
execute if score @s ModeSkill matches 31061..31069 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 狩人＜ステークスファイア＞
execute if score @s ModeSkill matches 31011..31019 run scoreboard players operation @s ActiveSkill = @s ModeSkill


scoreboard players operation @s[scores={ActiveSkill=1..}] ActiveCost = @s ModeCost

### トリガーリセット
scoreboard players reset @s UseBow
