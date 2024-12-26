#> effect:doom/apply_super

# 死の宣告(3カウント)

function effect:doom/apply
scoreboard players set _ _ 10
scoreboard players operation @s DoomCount < _ _
