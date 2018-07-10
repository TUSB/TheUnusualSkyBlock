##############################
### 死亡時処理
##############################

### 忍者＜サヨナラ＞
execute if score @s ModeSkill matches 21061..21069 run scoreboard players operation @s ActiveSkill = @s ModeSkill

### レイズ処理
tag @s[tag=Reraise] add Raise
tag @s[tag=Reraise] remove Reraise
execute if entity @s[tag=Raise] run function skill_manager:white_mage/araise/raise

### 呪詛処理
execute if entity @s[tag=Curse] run function effect_manager:curse/death

### ジャンプトリガーリセット
scoreboard players reset @s Deaths
