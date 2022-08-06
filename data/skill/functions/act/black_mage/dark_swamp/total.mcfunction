
### ダークスワンプMP計算&ダメージ

function skill:damage/apply/
scoreboard players operation @s Damage < @s HP
scoreboard players operation _ DarkSwamp += @s Damage
