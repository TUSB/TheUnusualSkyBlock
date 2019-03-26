##############################
### 死の宣告(3カウント)付与
##############################


function effect_manager:doom/apply
scoreboard players operation @s DoomCount < $10 Const