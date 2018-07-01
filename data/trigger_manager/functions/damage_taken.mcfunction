##############################
### 被ダメトリガー
##############################

### 剣士＜リアクティブヒール＞
execute if score @s ModeSkill matches 11051..11059 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### トリガーリセット
scoreboard players reset @s DamageTaken

say aaa