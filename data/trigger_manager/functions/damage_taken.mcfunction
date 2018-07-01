##############################
### 被ダメトリガー
##############################

### 剣士＜リアクティブヒール＞
execute if score @s ModeSkill matches 11051..11059 unless entity @s[nbt=!{SelectedItem:{id:"minecraft:wooden_sword"}},nbt=!{SelectedItem:{id:"minecraft:stone_sword"}},nbt=!{SelectedItem:{id:"minecraft:golden_sword"}},nbt=!{SelectedItem:{id:"minecraft:iron_sword"}},nbt=!{SelectedItem:{id:"minecraft:diamond_sword"}}] run scoreboard players operation @s ActiveSkill = @s ModeSkill

### トリガーリセット
scoreboard players reset @s DamageTaken
