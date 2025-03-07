#> effect:doom/apply_super

# 死の宣告(3カウント)

# 効果中なら中断
execute if score @s DoomCount matches 1..13 run return fail

function effect:doom/apply
scoreboard players set _ _ 10
scoreboard players operation @s DoomCount < _ _
