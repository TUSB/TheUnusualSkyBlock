##############################
### バードストライクモブ適用サブファンクション
##############################

scoreboard players set $Damage Global 30000
function calc_manager:apply_damage_modifier

###ダメージ判定
scoreboard players operation @s[tag=!Vehicle] Damage += $Damage Global
scoreboard players operation $Damage Global *= $10 Const
scoreboard players operation @s[tag=Vehicle] Damage += $Damage Global
data merge entity @s {Motion:[0d,-10d,0d]}
