##############################
### バードストライクモブ適用サブファンクション
##############################

scoreboard players set $Damage Global 420000
function skill_manager:damage_modifier/apply

###ダメージ判定
scoreboard players operation @s[tag=!Vehicle] Damage > $Damage Global
scoreboard players operation $Damage Global *= $10 Const
scoreboard players operation @s[tag=Vehicle] Damage > $Damage Global
data merge entity @s {Motion:[0d,-10d,0d]}
