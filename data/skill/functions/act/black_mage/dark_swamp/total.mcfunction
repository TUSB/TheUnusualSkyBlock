
### ダークスワンプMP計算&ダメージ

function skill:damage/apply/
scoreboard players operation @s Damage < @s HP
execute if score @s Damage matches 1.. run scoreboard players operation _ DarkSwamp += @s Damage
