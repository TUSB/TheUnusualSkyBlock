##############################
### 投擲ポーショントリガー
##############################

### 忍者＜手裏剣＞
execute if score @s ModeSkill matches 21011..21019 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### トリガーリセット
scoreboard players reset @s UseSplashPotion
