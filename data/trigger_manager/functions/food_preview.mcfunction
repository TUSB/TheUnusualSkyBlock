##############################
### 食事トリガー前処理
##############################

scoreboard players operation @s LastFoodLevel -= @s FoodLevel
scoreboard players operation @s LastFoodLevel *= $-1 Const

### 狩人＜ワイルドヒーリング＞
execute if score @s ModeSkill matches 31041..31049 if score @s LastFoodLevel matches 1.. run scoreboard players operation @s ActiveSkill = @s ModeSkill
