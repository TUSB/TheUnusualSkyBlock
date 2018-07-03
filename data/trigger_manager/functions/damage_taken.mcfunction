##############################
### 被ダメトリガー
##############################

### 剣士＜リアクティブヒール＞
execute if score @s ModeSkill matches 11051..11059 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 剣士＜タクティカルヒール＞発動
execute if score @s DamageTaken matches 120.. if score @s TacticalHeal matches 0.. run function skill_manager:knight/tactical_heal/react

### トリガーリセット
scoreboard players reset @s DamageTaken
