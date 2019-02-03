##############################
### 被ダメトリガー
##############################

### 剣士＜リアクティブヒール＞
execute if score @s ModeSkill matches 11051..11059 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### 剣士＜タクティカルヒール＞発動
execute if score @s DamageTaken matches 120.. if score @s TacticalHeal matches 0.. run function skill_manager:knight/tactical_heal/react

### トント進行処理
execute if score @s TntCount matches 0.. run function effect_manager:tnt/check

### エンパ補正
execute if score @s UseEnderPearl matches 0.. run execute align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
execute if score @s UseEnderPearl matches 0.. run scoreboard players reset @s UseEnderPearl

### トリガーリセット
scoreboard players reset @s DamageTaken
